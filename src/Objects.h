#pragma once

#include <vector>
#include <array>

const double CONTRAST_FACTOR = 0.75;

using std::vector;

struct Coefficients {
    int x;
    int y;
    int shiftR;
    int shiftG;
    int shiftB;
 };

struct Block {
    int x;
    int y;
    int sumR;
    int sumG;
    int sumB;
};