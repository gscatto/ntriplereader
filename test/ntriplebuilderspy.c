#include <ntriplebuilder.h>
#include <ntriplebuilderspy.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char actual[1024];

static void reporttokenerror() {
  strcat(actual, "reporttokenerror()");
}

void ntriplebuilderspy_init() {
  ntriplebuilder_setreporttokenerror(reporttokenerror);
}

void ntriplebuilderspy_verify(char *expected) {
  if (strcmp(actual, expected) != 0) {
    fprintf(stderr,
	    "error: expected interaction to be \"%s\", got \"%s\"",
	    expected,
	    actual);
    exit(EXIT_FAILURE);
  }
}
