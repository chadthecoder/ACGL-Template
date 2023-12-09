rm -rf build
cmake -B build -S . -DCMAKE_TOOLCHAIN_FILE=lib/openGL_vcpkg/lib/vcpkg/scripts/buildsystems/vcpkg.cmake
cd build
make
cd ..