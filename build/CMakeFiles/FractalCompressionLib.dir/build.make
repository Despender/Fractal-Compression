# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\FractalCompression

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\FractalCompression\build

# Include any dependencies generated for this target.
include CMakeFiles/FractalCompressionLib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/FractalCompressionLib.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/FractalCompressionLib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/FractalCompressionLib.dir/flags.make

CMakeFiles/FractalCompressionLib.dir/codegen:
.PHONY : CMakeFiles/FractalCompressionLib.dir/codegen

CMakeFiles/FractalCompressionLib.dir/src/Metrics.cpp.obj: CMakeFiles/FractalCompressionLib.dir/flags.make
CMakeFiles/FractalCompressionLib.dir/src/Metrics.cpp.obj: CMakeFiles/FractalCompressionLib.dir/includes_CXX.rsp
CMakeFiles/FractalCompressionLib.dir/src/Metrics.cpp.obj: D:/FractalCompression/src/Metrics.cpp
CMakeFiles/FractalCompressionLib.dir/src/Metrics.cpp.obj: CMakeFiles/FractalCompressionLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\FractalCompression\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/FractalCompressionLib.dir/src/Metrics.cpp.obj"
	C:\ProgramData\mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/FractalCompressionLib.dir/src/Metrics.cpp.obj -MF CMakeFiles\FractalCompressionLib.dir\src\Metrics.cpp.obj.d -o CMakeFiles\FractalCompressionLib.dir\src\Metrics.cpp.obj -c D:\FractalCompression\src\Metrics.cpp

CMakeFiles/FractalCompressionLib.dir/src/Metrics.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FractalCompressionLib.dir/src/Metrics.cpp.i"
	C:\ProgramData\mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\FractalCompression\src\Metrics.cpp > CMakeFiles\FractalCompressionLib.dir\src\Metrics.cpp.i

CMakeFiles/FractalCompressionLib.dir/src/Metrics.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FractalCompressionLib.dir/src/Metrics.cpp.s"
	C:\ProgramData\mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\FractalCompression\src\Metrics.cpp -o CMakeFiles\FractalCompressionLib.dir\src\Metrics.cpp.s

CMakeFiles/FractalCompressionLib.dir/src/BlockCompression.cpp.obj: CMakeFiles/FractalCompressionLib.dir/flags.make
CMakeFiles/FractalCompressionLib.dir/src/BlockCompression.cpp.obj: CMakeFiles/FractalCompressionLib.dir/includes_CXX.rsp
CMakeFiles/FractalCompressionLib.dir/src/BlockCompression.cpp.obj: D:/FractalCompression/src/BlockCompression.cpp
CMakeFiles/FractalCompressionLib.dir/src/BlockCompression.cpp.obj: CMakeFiles/FractalCompressionLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\FractalCompression\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/FractalCompressionLib.dir/src/BlockCompression.cpp.obj"
	C:\ProgramData\mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/FractalCompressionLib.dir/src/BlockCompression.cpp.obj -MF CMakeFiles\FractalCompressionLib.dir\src\BlockCompression.cpp.obj.d -o CMakeFiles\FractalCompressionLib.dir\src\BlockCompression.cpp.obj -c D:\FractalCompression\src\BlockCompression.cpp

CMakeFiles/FractalCompressionLib.dir/src/BlockCompression.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FractalCompressionLib.dir/src/BlockCompression.cpp.i"
	C:\ProgramData\mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\FractalCompression\src\BlockCompression.cpp > CMakeFiles\FractalCompressionLib.dir\src\BlockCompression.cpp.i

CMakeFiles/FractalCompressionLib.dir/src/BlockCompression.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FractalCompressionLib.dir/src/BlockCompression.cpp.s"
	C:\ProgramData\mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\FractalCompression\src\BlockCompression.cpp -o CMakeFiles\FractalCompressionLib.dir\src\BlockCompression.cpp.s

CMakeFiles/FractalCompressionLib.dir/src/AbstractCompression.cpp.obj: CMakeFiles/FractalCompressionLib.dir/flags.make
CMakeFiles/FractalCompressionLib.dir/src/AbstractCompression.cpp.obj: CMakeFiles/FractalCompressionLib.dir/includes_CXX.rsp
CMakeFiles/FractalCompressionLib.dir/src/AbstractCompression.cpp.obj: D:/FractalCompression/src/AbstractCompression.cpp
CMakeFiles/FractalCompressionLib.dir/src/AbstractCompression.cpp.obj: CMakeFiles/FractalCompressionLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\FractalCompression\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/FractalCompressionLib.dir/src/AbstractCompression.cpp.obj"
	C:\ProgramData\mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/FractalCompressionLib.dir/src/AbstractCompression.cpp.obj -MF CMakeFiles\FractalCompressionLib.dir\src\AbstractCompression.cpp.obj.d -o CMakeFiles\FractalCompressionLib.dir\src\AbstractCompression.cpp.obj -c D:\FractalCompression\src\AbstractCompression.cpp

CMakeFiles/FractalCompressionLib.dir/src/AbstractCompression.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FractalCompressionLib.dir/src/AbstractCompression.cpp.i"
	C:\ProgramData\mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\FractalCompression\src\AbstractCompression.cpp > CMakeFiles\FractalCompressionLib.dir\src\AbstractCompression.cpp.i

CMakeFiles/FractalCompressionLib.dir/src/AbstractCompression.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FractalCompressionLib.dir/src/AbstractCompression.cpp.s"
	C:\ProgramData\mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\FractalCompression\src\AbstractCompression.cpp -o CMakeFiles\FractalCompressionLib.dir\src\AbstractCompression.cpp.s

CMakeFiles/FractalCompressionLib.dir/src/FractalFileIO.cpp.obj: CMakeFiles/FractalCompressionLib.dir/flags.make
CMakeFiles/FractalCompressionLib.dir/src/FractalFileIO.cpp.obj: CMakeFiles/FractalCompressionLib.dir/includes_CXX.rsp
CMakeFiles/FractalCompressionLib.dir/src/FractalFileIO.cpp.obj: D:/FractalCompression/src/FractalFileIO.cpp
CMakeFiles/FractalCompressionLib.dir/src/FractalFileIO.cpp.obj: CMakeFiles/FractalCompressionLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\FractalCompression\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/FractalCompressionLib.dir/src/FractalFileIO.cpp.obj"
	C:\ProgramData\mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/FractalCompressionLib.dir/src/FractalFileIO.cpp.obj -MF CMakeFiles\FractalCompressionLib.dir\src\FractalFileIO.cpp.obj.d -o CMakeFiles\FractalCompressionLib.dir\src\FractalFileIO.cpp.obj -c D:\FractalCompression\src\FractalFileIO.cpp

CMakeFiles/FractalCompressionLib.dir/src/FractalFileIO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FractalCompressionLib.dir/src/FractalFileIO.cpp.i"
	C:\ProgramData\mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\FractalCompression\src\FractalFileIO.cpp > CMakeFiles\FractalCompressionLib.dir\src\FractalFileIO.cpp.i

CMakeFiles/FractalCompressionLib.dir/src/FractalFileIO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FractalCompressionLib.dir/src/FractalFileIO.cpp.s"
	C:\ProgramData\mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\FractalCompression\src\FractalFileIO.cpp -o CMakeFiles\FractalCompressionLib.dir\src\FractalFileIO.cpp.s

CMakeFiles/FractalCompressionLib.dir/src/main.cpp.obj: CMakeFiles/FractalCompressionLib.dir/flags.make
CMakeFiles/FractalCompressionLib.dir/src/main.cpp.obj: CMakeFiles/FractalCompressionLib.dir/includes_CXX.rsp
CMakeFiles/FractalCompressionLib.dir/src/main.cpp.obj: D:/FractalCompression/src/main.cpp
CMakeFiles/FractalCompressionLib.dir/src/main.cpp.obj: CMakeFiles/FractalCompressionLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\FractalCompression\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/FractalCompressionLib.dir/src/main.cpp.obj"
	C:\ProgramData\mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/FractalCompressionLib.dir/src/main.cpp.obj -MF CMakeFiles\FractalCompressionLib.dir\src\main.cpp.obj.d -o CMakeFiles\FractalCompressionLib.dir\src\main.cpp.obj -c D:\FractalCompression\src\main.cpp

CMakeFiles/FractalCompressionLib.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FractalCompressionLib.dir/src/main.cpp.i"
	C:\ProgramData\mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\FractalCompression\src\main.cpp > CMakeFiles\FractalCompressionLib.dir\src\main.cpp.i

CMakeFiles/FractalCompressionLib.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FractalCompressionLib.dir/src/main.cpp.s"
	C:\ProgramData\mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\FractalCompression\src\main.cpp -o CMakeFiles\FractalCompressionLib.dir\src\main.cpp.s

# Object files for target FractalCompressionLib
FractalCompressionLib_OBJECTS = \
"CMakeFiles/FractalCompressionLib.dir/src/Metrics.cpp.obj" \
"CMakeFiles/FractalCompressionLib.dir/src/BlockCompression.cpp.obj" \
"CMakeFiles/FractalCompressionLib.dir/src/AbstractCompression.cpp.obj" \
"CMakeFiles/FractalCompressionLib.dir/src/FractalFileIO.cpp.obj" \
"CMakeFiles/FractalCompressionLib.dir/src/main.cpp.obj"

# External object files for target FractalCompressionLib
FractalCompressionLib_EXTERNAL_OBJECTS =

libFractalCompressionLib.a: CMakeFiles/FractalCompressionLib.dir/src/Metrics.cpp.obj
libFractalCompressionLib.a: CMakeFiles/FractalCompressionLib.dir/src/BlockCompression.cpp.obj
libFractalCompressionLib.a: CMakeFiles/FractalCompressionLib.dir/src/AbstractCompression.cpp.obj
libFractalCompressionLib.a: CMakeFiles/FractalCompressionLib.dir/src/FractalFileIO.cpp.obj
libFractalCompressionLib.a: CMakeFiles/FractalCompressionLib.dir/src/main.cpp.obj
libFractalCompressionLib.a: CMakeFiles/FractalCompressionLib.dir/build.make
libFractalCompressionLib.a: CMakeFiles/FractalCompressionLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=D:\FractalCompression\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library libFractalCompressionLib.a"
	$(CMAKE_COMMAND) -P CMakeFiles\FractalCompressionLib.dir\cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\FractalCompressionLib.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/FractalCompressionLib.dir/build: libFractalCompressionLib.a
.PHONY : CMakeFiles/FractalCompressionLib.dir/build

CMakeFiles/FractalCompressionLib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\FractalCompressionLib.dir\cmake_clean.cmake
.PHONY : CMakeFiles/FractalCompressionLib.dir/clean

CMakeFiles/FractalCompressionLib.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\FractalCompression D:\FractalCompression D:\FractalCompression\build D:\FractalCompression\build D:\FractalCompression\build\CMakeFiles\FractalCompressionLib.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/FractalCompressionLib.dir/depend

