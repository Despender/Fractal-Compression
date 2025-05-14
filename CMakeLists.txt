cmake_minimum_required(VERSION 3.10)

project(FractalCompression)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add SFML as a subdirectory
add_subdirectory(lib/SFML)

# Add source files
set(SOURCES
    src/Metrics.cpp
    src/BlockCompression.cpp
    src/AbstractCompression.cpp
    src/FractalFileIO.cpp
    src/main.cpp
)

# Add header files
set(HEADERS
    src/Objects.h
    src/FractalFileIO.h
    src/Metrics.h
    src/BlockCompression.h
    src/AbstractCompression.h
)

# Create the library
add_library(FractalCompressionLib ${SOURCES} ${HEADERS})

# Set include directories
target_include_directories(FractalCompressionLib PUBLIC 
    src
    ${CMAKE_CURRENT_SOURCE_DIR}/lib/SFML/include
)

# Create executable
add_executable(${PROJECT_NAME} ${SOURCES} ${HEADERS})

# Include directories
target_include_directories(${PROJECT_NAME} PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/src
    ${CMAKE_CURRENT_SOURCE_DIR}/lib/SFML/include
)

# Link SFML libraries and our library
target_link_libraries(${PROJECT_NAME} PRIVATE
    FractalCompressionLib
    sfml-graphics
    sfml-system
)

# Copy SFML DLLs to output directory (Windows only)
if(WIN32)
    add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy_if_different
            $<TARGET_FILE:sfml-graphics>
            $<TARGET_FILE:sfml-system>
            $<TARGET_FILE_DIR:${PROJECT_NAME}>
    )
endif()

# Create an executable target (optional, uncomment if needed)
# add_executable(FractalCompressionDemo main.cpp)
# target_link_libraries(FractalCompressionDemo PRIVATE FractalCompression)