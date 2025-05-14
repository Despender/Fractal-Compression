#include "FractalFileIO.h"

bool FractalFileIO::WriteCompressedFile(const std::string& filename, const FileHeader& header, const std::vector<std::vector<Coefficients>>& coefficients) {
    std::ofstream file(filename, std::ios::binary);
    if (!file) return false;

    if (!file.write(reinterpret_cast<const char*>(&header), sizeof(FileHeader))) {
        return false;
    }

    // Write all coefficients as blocks
    for (const auto& row : coefficients) {
        for (const auto& coeff : row) {
            BlockCoefficients block{
                static_cast<uint8_t>(coeff.x),
                static_cast<uint8_t>(coeff.y),
                static_cast<int16_t>(coeff.shiftR),
                static_cast<int16_t>(coeff.shiftG),
                static_cast<int16_t>(coeff.shiftB)
            };
            if (!file.write(reinterpret_cast<const char*>(&block), sizeof(BlockCoefficients))) {
                return false;
            }
        }
    }
    return true;
}

bool FractalFileIO::ReadCompressedFile(const std::string& filename, FileHeader& header, std::vector<std::vector<Coefficients>>& coefficients) {
    std::ifstream file(filename, std::ios::binary);
    if (!file) return false;

    if (!file.read(reinterpret_cast<char*>(&header), sizeof(FileHeader))) {
        return false;
    }

    int range_num_width = header.width / header.blockSize;
    int range_num_height = header.height / header.blockSize;
    coefficients.resize(range_num_width, std::vector<Coefficients>(range_num_height));

    // Read all coefficients
    for (auto& row : coefficients) {
        for (auto& coeff : row) {
            BlockCoefficients block;
            if (!file.read(reinterpret_cast<char*>(&block), sizeof(BlockCoefficients))) {
                return false;
            }
            coeff.x = block.x;
            coeff.y = block.y;
            coeff.shiftR = block.shiftR;
            coeff.shiftG = block.shiftG;
            coeff.shiftB = block.shiftB;
        }
    }
    return true;
}