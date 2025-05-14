#include "AbstractCompression.h"
#include <cmath>
#include <iostream>

// Initialize static members
int AbstractCompression::range_num_width = 0;
int AbstractCompression::range_num_height = 0;
int AbstractCompression::domain_num_width = 0;
int AbstractCompression::domain_num_height = 0;
int AbstractCompression::range_block_size = 0;
int AbstractCompression::domain_block_size = 0;
vector<vector<Block>> AbstractCompression::rangeArray;
vector<vector<Block>> AbstractCompression::domainArray;
vector<vector<Coefficients>> AbstractCompression::compressCoeff;
vector<vector<Color>> AbstractCompression::imageColor;

Block AbstractCompression::CreateBlockRange(int x, int y, const vector<vector<Color>>& imageColor, int range_block_size) {
    Block block;
    block.x = x;
    block.y = y;
    block.sumR = 0;
    block.sumG = 0;
    block.sumB = 0;

    for (int i = 0; i < range_block_size; ++i) {
        for (int j = 0; j < range_block_size; ++j) {
            block.sumR += imageColor[block.x + i][block.y + j].r;
            block.sumG += imageColor[block.x + i][block.y + j].g;
            block.sumB += imageColor[block.x + i][block.y + j].b;

        }
    }
    return block;
}

Block AbstractCompression::CreateBlockDomain(int x, int y, const vector<vector<Color>>& imageColor, int range_block_size) { 
    Block block;
    block.x = x;
    block.y = y;
    block.sumR = 0;
    block.sumG = 0;
    block.sumB = 0;

    for (int i = 0; i < range_block_size; ++i) {
        for (int j = 0; j < range_block_size; ++j) {
            block.sumR += imageColor[block.x + i * 2][block.y + j * 2].r;
            block.sumG += imageColor[block.x + i * 2][block.y + j * 2].g;
            block.sumB += imageColor[block.x + i * 2][block.y + j * 2].b;

        }
    }
    return block;
}

double AbstractCompression::Shift(const Block& rangeBlock, const Block& domainBlock, int range_block_size, int flag) {
    double shift = 0;
    if (flag == 0)
        shift = ((rangeBlock.sumR) - (CONTRAST_FACTOR * domainBlock.sumR)) / (range_block_size * range_block_size);
    if (flag == 1)
        shift = ((rangeBlock.sumG) - (CONTRAST_FACTOR * domainBlock.sumG)) / (range_block_size * range_block_size);
    if (flag == 2)
        shift = ((rangeBlock.sumB) - (CONTRAST_FACTOR * domainBlock.sumB)) / (range_block_size * range_block_size);
    return shift;
} 