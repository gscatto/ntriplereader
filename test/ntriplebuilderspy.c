#include <ntriplebuilder.h>
#include <ntriplebuilderspy.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char actual[1024];

void ntriplebuilderspy_reporttokenerror() {
  strcat(actual, "reporttokenerror()");
}

void ntriplebuilderspy_verify(char *expected) {
  if (strcmp(actual, expected) != 0) {
    fprintf(stderr,
	    "error: expect interaction to be \"%s\", got \"%s\"",
	    expected,
	    actual);
    exit(EXIT_FAILURE);
  }
}

void ntriplebuilderspy_init() {
  ntriplebuilder_setreporttokenerror(ntriplebuilderspy_reporttokenerror);
}
