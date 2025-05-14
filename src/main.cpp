#include <iostream>
#include <chrono>
#include <string>
#include "BlockCompression.h"

int main(int argc, char* argv[]) {
    // Create timers for compression and decompression
    auto comTimer = std::chrono::high_resolution_clock::now();
    auto decTimer = std::chrono::high_resolution_clock::now();
    
    std::cout << "Fractal compression: " << std::endl;
    
    comTimer = std::chrono::high_resolution_clock::now();
    
    BlockCompression::Compression("D:\\FractalCompression\\images\\Sample1\\sample.bmp", "D:\\FractalCompression\\images\\Sample1\\Compressed file", 2);
    
    auto comEnd = std::chrono::high_resolution_clock::now();
    auto comElapsed = std::chrono::duration_cast<std::chrono::milliseconds>(comEnd - comTimer);
    std::cout << "Compression time: " << comElapsed.count() << " ms" << std::endl;
    
    decTimer = std::chrono::high_resolution_clock::now();
    
    BlockCompression::Decompression("D:\\FractalCompression\\images\\Sample1\\Compressed file", "D:\\FractalCompression\\images\\Sample1\\Decompressed file.bmp", 10);
    
    auto decEnd = std::chrono::high_resolution_clock::now();
    auto decElapsed = std::chrono::duration_cast<std::chrono::milliseconds>(decEnd - decTimer);
    std::cout << "Decompression time: " << decElapsed.count() << " ms" << std::endl;
    
    std::cout << "Please, press enter" << std::endl;
    std::cin.get();
    
    return 0;
} 