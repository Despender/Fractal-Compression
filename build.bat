cd /d %~dp0build
set CXX=g++
cmake -G "MinGW Makefiles" ..
mingw32-make 