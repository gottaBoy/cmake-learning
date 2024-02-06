#include <iostream>
#include "jaychou.h"
#include "lamjj.h"
#include "config.h"

int main(int argc, char *argv[]) {
    JayChou jayChou;
    std::cout << jayChou.singing() << std::endl;
    LamJJ lamjj;
    std::cout << lamjj.singing() << std::endl;
    std::cout << CMAKE_CXX_STANDARD << std::endl;
    return 0;
}
