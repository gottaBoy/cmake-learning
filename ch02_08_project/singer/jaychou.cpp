#include "jaychou.h"
#ifdef USE_JAYCHOU2
  #include "jaychou2.h"
#endif
std::string JayChou::singing()
{
#ifdef USE_JAYCHOU2
    return JayChou2::singing();
#else
    return "zhoujielun: zuiweidadezuoping";
#endif
}