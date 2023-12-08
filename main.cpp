#include "Camera.hpp"

int main() {
    glm::vec3 test(2.f, 2.f, 2.f);

    Camera cam(800, 800, test);

    std::cout << "success!\n";

    return 0;
}