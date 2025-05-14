#pragma once

#include <vector>
#include <SFML/Graphics.hpp>
#include "Objects.h"

using Color = sf::Color;

class AbstractCompression {
protected:
    static int range_num_width, range_num_height;
    static int domain_num_width, domain_num_height;
    static int range_block_size, domain_block_size; 
    static vector<vector<Block>> rangeArray;
    static vector<vector<Block>> domainArray;
    static vector<vector<Coefficients>> compressCoeff;

public:
    static vector<vector<Color>> imageColor;

    static Block CreateBlockRange(int x, int y, const vector<vector<Color>>& imageColor, int range_block_size);
    static Block CreateBlockDomain(int x, int y, const vector<vector<Color>>& imageColor, int range_block_size);
    static double Shift(const Block& rangeBlock, const Block& domainBlock, int range_block_size, int flag);
}; 