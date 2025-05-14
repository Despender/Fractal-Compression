#pragma once

#include <vector>
#include <string>
#include <SFML/Graphics.hpp>
#include "AbstractCompression.h"
#include "Metrics.h"

using std::string;

class BlockCompression : public AbstractCompression {
private:
    static void FindCoefficients(int istart);
public:
    static void Compression(const string& filename, const string& compressed_filename, int range_block_size_default);
    static void Decompression(const string& compressed_filename, const string& output_filename, int num_iterations);
}; 