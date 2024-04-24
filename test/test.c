#include <ntriplebuilder.h>
#include <ntriplereader.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char ntriplebuilderspy_interactions[1024];

void ntriplebuilderspy_reporttokenerror() {
  strcat(ntriplebuilderspy_interactions, "reporttokenerror()");
}

void ntriplebuilderspy_assert_interactions(char *interactions) {
  if (strcmp(ntriplebuilderspy_interactions, interactions) != 0) {
    fprintf(stderr,
	    "error: expect ntriplebuilderspy_interactions to be \"%s\", got \"%s\"",
	    interactions,
	    ntriplebuilderspy_interactions);
    exit(EXIT_FAILURE);
  }
}

void ntriplebuilderspy_init() {
  ntriplebuilder_setreporttokenerror(ntriplebuilderspy_reporttokenerror);
}

int main() {
  ntriplebuilderspy_init();
  ntriplereader_read();
  ntriplebuilderspy_assert_interactions("reporttokenerror()");
}
