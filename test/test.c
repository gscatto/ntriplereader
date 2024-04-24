#include "ntriplebuilderspy.h"
#include <ntriplebuilder.h>
#include <ntriplereader.h>

int main() {
  ntriplebuilderspy_init();
  ntriplereader_read();
  ntriplebuilderspy_verify("reporttokenerror()");
}
