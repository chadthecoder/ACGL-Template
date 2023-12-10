cmake_minimum_required(VERSION 3.16)
project(cmakeTest)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

#set(glad_DIR vcpkg_installed/x64-linux/share/glad)
find_package(glad CONFIG REQUIRED)
find_package(glfw3 CONFIG REQUIRED)

#include_directories(lib/ACGL/lib/vcpkg)
add_subdirectory(lib/ACGL)

#include_directories(../res/shaders)

add_executable(${PROJECT_NAME} src/main.cpp)
#target_compile_features(${TARGET_NAME} PRIVATE cxx_std_17)
#target_include_directories(${PROJECT_NAME}
#    PUBLIC res/shaders
#    )
target_include_directories(${PROJECT_NAME}
    PUBLIC lib/ACGL/include
#    PUBLIC lib/openGL_vcpkg/vcpkg_installed
    )
target_link_libraries(${PROJECT_NAME} ACGL glad::glad glfw ${CMAKE_DL_LIBS})