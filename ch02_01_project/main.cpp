#include <iostream>
#include "singer/jaychou.h"

int main(int argc, char *argv[]) {
    JayChou jayChou;
    std::cout << jayChou.singing() << std::endl;
    return 0;
}
