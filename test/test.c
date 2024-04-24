#include "ntriplebuilderspy.h"
#include <ntriplereader.h>

int main() {
  ntriplebuilderspy_init();
  ntriplereader_read();
  ntriplebuilderspy_verify("reporttokenerror()");
}
