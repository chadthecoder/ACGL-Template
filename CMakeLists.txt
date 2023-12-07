cmake_minimum_required(VERSION 3.16)
project(cmakeTest)

include_directories(lib/openGL_vcpkg)
add_subdirectory(lib/openGL_vcpkg)

add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} openGL_vcpkg)