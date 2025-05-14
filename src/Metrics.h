#pragma once

#include <vector>
#include <SFML/Graphics.hpp>
#include "Objects.h"
#include "AbstractCompression.h"

using Color = sf::Color;

class Metrics {
public:
    static double DistanceClass(const vector<vector<Color>>& classImageColor, const Block& rangeBlock, const Block& domainBlock, int range_block_size, double shift);
}; 