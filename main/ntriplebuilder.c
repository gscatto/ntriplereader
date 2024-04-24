#include <ntriplebuilder.h>
#include <stdlib.h>

static ntriplebuilderspy_reporttokenerror_t reporttokenerror = NULL;

void ntriplebuilder_reporttokenerror() {
  if (reporttokenerror != NULL)
    (*reporttokenerror)();
}

void ntriplebuilder_setreporttokenerror(ntriplebuilderspy_reporttokenerror_t f) {
  reporttokenerror = f;
}
