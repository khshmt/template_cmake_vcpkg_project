cmake_minimum_required(VERSION 3.20.0)
project(TEST)

include_directories(${CMAKE_SOURCE_DIR}/include)

add_library(print src/print.cpp include/print.hpp)

add_executable(${PROJECT_NAME} src/main.cpp)
target_link_libraries(${PROJECT_NAME} print)