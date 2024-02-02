#include <iostream>
#include "singer/jaychou.h"
#include "singer/lamjj.h"

int main(int argc, char *argv[]) {
    JayChou jayChou;
    std::cout << jayChou.singing() << std::endl;
    LamJJ lamjj;
    std::cout << lamjj.singing() << std::endl;
    return 0;
}
