#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char ntriplebuilderspy_interactions[1024];

void ntriplebuilder_reporttokenerror() {
  strcat(ntriplebuilderspy_interactions, "reporttokenerror()");
}

void ntriplereader_read() {
  ntriplebuilder_reporttokenerror();
}

int main() {
  ntriplereader_read();
  if (strcmp(ntriplebuilderspy_interactions, "reporttokenerror()") != 0) {
    fprintf(stderr,
	    "error: expect ntriplebuilderspy_interactions to be \"%s\", got \"%s\"",
	    "reporttokenerror()",
	    ntriplebuilderspy_interactions);
    exit(EXIT_FAILURE);
  }
}
