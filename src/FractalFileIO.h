#pragma once
#include <fstream>
#include <vector>
#include <stdint.h>
#include "Objects.h"

class FractalFileIO {
public:
    struct FileHeader {
        uint16_t width;
        uint16_t height;
        uint8_t blockSize;
    };

    struct BlockCoefficients {
        uint8_t x;
        uint8_t y;
        int16_t shiftR;
        int16_t shiftG;
        int16_t shiftB;
    };

    static bool WriteCompressedFile(const std::string& filename, const FileHeader& header, const std::vector<std::vector<Coefficients>>& coefficients);
    static bool ReadCompressedFile(const std::string& filename, FileHeader& header, std::vector<std::vector<Coefficients>>& coefficients);
};