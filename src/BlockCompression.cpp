#include "BlockCompression.h"
#include "FractalFileIO.h"
#include <fstream>
#include <iostream>
#include <cmath>
#include <thread>
#include <SFML/Graphics.hpp>

const double MAX_DISTANCE = 10000000; 

using Vector2u = sf::Vector2u;
using Image = sf::Image;

void BlockCompression::FindCoefficients(int i) { // i = start
    for (int j = 0; j < range_num_height; ++j) {
        int current_x = 0;
        int current_y = 0;
        double current_distance = std::numeric_limits<double>::max();
        double current_shiftR = 0;
        double current_shiftG = 0;
        double current_shiftB = 0;
        bool oneflag = false;
        
        for (int k = 0; k < domain_num_width; ++k) {
            for (int l = 0; l < domain_num_height; ++l) {
                double shiftR = Shift(rangeArray[i][j], domainArray[k][l], range_block_size, 0);
                double shiftG = Shift(rangeArray[i][j], domainArray[k][l], range_block_size, 1);
                double shiftB = Shift(rangeArray[i][j], domainArray[k][l], range_block_size, 2);
                double distance = Metrics::DistanceClass(
                    imageColor,
                    rangeArray[i][j], domainArray[k][l],
                    range_block_size, shiftR
                );
                if (distance < MAX_DISTANCE) {
                    oneflag = true;
                    current_x = k;
                    current_y = l;
                    current_shiftR = shiftR;
                    current_shiftG = shiftG;
                    current_shiftB = shiftB;
                    current_distance = distance;
                } else {
                    if (distance < current_distance) {
                        current_x = k;
                        current_y = l;
                        current_shiftR = shiftR;
                        current_shiftG = shiftG;
                        current_shiftB = shiftB;
                        current_distance = distance;
                    }
                }
                if (oneflag)
                    break;
            }
            if (oneflag)
                break;
        }
        
        compressCoeff[i][j].x = current_x;
        compressCoeff[i][j].y = current_y;
        compressCoeff[i][j].shiftR = static_cast<int>(current_shiftR);
        compressCoeff[i][j].shiftG = static_cast<int>(current_shiftG);
        compressCoeff[i][j].shiftB = static_cast<int>(current_shiftB);
    }
}

void BlockCompression::Compression(const string& filename, const string& compressed_filename, int range_block_size_default) {
    std::ifstream file(filename);
    if (!file.good()) {
        std::cout << "File does not exist" << std::endl;
        return;
    }
    file.close();
    
    Image image;
    if (!image.loadFromFile(filename)) {
        std::cout << "Failed to load image" << std::endl;
        return;
    }
    
    // Convert SFML image to our color array format
    imageColor.resize(image.getSize().x, vector<Color>(image.getSize().y));
    for (unsigned int i = 0; i < image.getSize().x; ++i) {
        for (unsigned int j = 0; j < image.getSize().y; ++j) {
            imageColor[i][j] = image.getPixel(Vector2u(i, j));
        }
    }
    
    // Main parameter responsible for the size of range blocks
    range_block_size = range_block_size_default;
    
    // Create range blocks
    range_num_width = image.getSize().x / range_block_size;
    range_num_height = image.getSize().y / range_block_size;
    rangeArray.resize(range_num_width, vector<Block>(range_num_height));
    
    for (int i = 0; i < range_num_width; ++i) {
        for (int j = 0; j < range_num_height; ++j) {
            rangeArray[i][j] = CreateBlockRange(i * range_block_size, j * range_block_size, imageColor, range_block_size);
        }
    }
    
    // Create domain blocks
    domain_num_width = range_num_width - 1;
    domain_num_height = range_num_height - 1;
    domain_block_size = range_block_size * 2;
    domainArray.resize(domain_num_width, vector<Block>(domain_num_height));
    
    for (int i = 0; i < domain_num_width; ++i) {
        for (int j = 0; j < domain_num_height; ++j) {
            domainArray[i][j] = CreateBlockDomain(i * range_block_size, j * range_block_size, imageColor, range_block_size);
        }
    }
    
    compressCoeff.resize(range_num_width, vector<Coefficients>(range_num_height));
    
    // Process in parallel
    vector<std::thread> threads;
    for (int i = 0; i < range_num_width; ++i) {
        threads.emplace_back(FindCoefficients, i);
    }
    
    for (auto& thread : threads) {
        thread.join();
    }
    
    // Write compressed data using FractalFileIO
    FractalFileIO::FileHeader header{
        static_cast<uint16_t>(image.getSize().x),
        static_cast<uint16_t>(image.getSize().y),
        static_cast<uint8_t>(range_block_size)
    };

    if (!FractalFileIO::WriteCompressedFile(compressed_filename, 
                                          header, compressCoeff)) {
        std::cerr << "Failed to write compressed file" << std::endl;
        return;
    }
}

void BlockCompression::Decompression(const string& compressed_filename, const string& output_filename, int num_iterations) {
    // Read compressed data using FractalFileIO
    FractalFileIO::FileHeader header;
    std::vector<std::vector<Coefficients>> coefficients;

    if (!FractalFileIO::ReadCompressedFile(compressed_filename, header, coefficients)) {
        std::cerr << "Failed to read compressed file" << std::endl;
        return;
    }

    // Use header values
    int image_width = header.width;
    int image_height = header.height;
    range_block_size = header.blockSize;
    compressCoeff = std::move(coefficients);

    Image newImage(Vector2u(image_width, image_height), Color::Black);
    
    int range_num_width = image_width / range_block_size;
    int range_num_height = image_height / range_block_size;
    
    // Create range blocks
    vector<vector<Block>> rangeArray(range_num_width, vector<Block>(range_num_height));
    for (int i = 0; i < range_num_width; ++i) {
        for (int j = 0; j < range_num_height; ++j) {
            rangeArray[i][j].x = i * range_block_size;
            rangeArray[i][j].y = j * range_block_size;
        }
    }
    
    // Create domain blocks
    int domain_num_width = range_num_width - 1;
    int domain_num_height = range_num_height - 1;
    int domain_block_size = range_block_size * 2;
    vector<vector<Block>> domainArray(domain_num_width, vector<Block>(domain_num_height));
    for (int i = 0; i < domain_num_width; ++i) {
        for (int j = 0; j < domain_num_height; ++j) {
            domainArray[i][j].x = i * range_block_size;
            domainArray[i][j].y = j * range_block_size;
        }
    }
    
    // Initialize with a black image
    Color avgColor = Color::Black;
    for (int i = 0; i < image_width; ++i) {
        for (int j = 0; j < image_height; ++j) {
            newImage.setPixel(Vector2u(i, j), avgColor);
        }
    }
    
    // Decompression iterations
    for (int it = 0; it < num_iterations; ++it) {
        Image tempImage = newImage;
        
        // Process blocks in parallel
        #pragma omp parallel for collapse(2)

        for (int i = 0; i < range_num_width; ++i) {
            for (int j = 0; j < range_num_height; ++j) {
                Block rangeBlock = rangeArray[i][j];
                Coefficients current_coefficent = compressCoeff[i][j];
                
                Block domainBlock = domainArray[current_coefficent.x][current_coefficent.y];
                
                // Process each pixel in the range block
                for (int pixel_x = 0; pixel_x < range_block_size; ++pixel_x) {
                    for (int pixel_y = 0; pixel_y < range_block_size; ++pixel_y) {
                        // Get corresponding domain block pixel
                        Color domainColor = tempImage.getPixel(Vector2u(
                            domainBlock.x + (pixel_x * 2),
                            domainBlock.y + (pixel_y * 2)
                        ));
                        
                        // Apply transformation
                        int r = static_cast<int>(CONTRAST_FACTOR * domainColor.r + current_coefficent.shiftR);
                        int g = static_cast<int>(CONTRAST_FACTOR * domainColor.g + current_coefficent.shiftG);
                        int b = static_cast<int>(CONTRAST_FACTOR * domainColor.b + current_coefficent.shiftB);
                        
                        // Clamp values
                        r = std::max(0, std::min(255, r));
                        g = std::max(0, std::min(255, g));
                        b = std::max(0, std::min(255, b));
                        
                        // Set the new color
                        newImage.setPixel(Vector2u(rangeBlock.x + pixel_x, rangeBlock.y + pixel_y), Color(r, g, b));
                    }
                }
            }
        }
    }
    
    // Save the final decompressed image
    if (!newImage.saveToFile(output_filename)) {
        std::cerr << "Failed to save decompressed image" << std::endl;
        return;
    }
} 