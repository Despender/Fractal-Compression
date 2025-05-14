#include "Metrics.h"
#include <cmath>

double Metrics::DistanceClass(const vector<vector<sf::Color>>& classImageColor,  const Block& rangeBlock, const Block& domainBlock, int range_block_size, double shift) {
    double distance = 0;
    double rangeValue = 0;
    double domainValue = 0;
    
    for (int i = 0; i < range_block_size; ++i) {
        for (int j = 0; j < range_block_size; ++j) {
            rangeValue = classImageColor[rangeBlock.x + i][rangeBlock.y + j].r;
            domainValue = classImageColor[domainBlock.x + (i * 2)][domainBlock.y + (j * 2)].r;
            distance += std::pow((rangeValue + shift - CONTRAST_FACTOR * domainValue), 2);
        }
    }
    return distance;
} 