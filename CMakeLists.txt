cmake_minimum_required(VERSION 3.16)
project(cmakeTest)

set(glad_DIR vcpkg_installed/x64-linux/share/glad)
find_package(glad CONFIG REQUIRED)

#include_directories(lib/openGL_vcpkg)
add_subdirectory(lib/openGL_vcpkg)

add_executable(${PROJECT_NAME} main.cpp)
target_include_directories(${PROJECT_NAME}
    PUBLIC lib/openGL_vcpkg/include
    PUBLIC lib/openGL_vcpkg/vcpkg_installed
    )
target_link_libraries(${PROJECT_NAME} openGL_vcpkg glad::glad ${CMAKE_DL_LIBS})