#include <ntriplebuilder.h>
#include <ntriplereader.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char ntriplebuilder_interactions[1024];

void ntriplebuilder_reporttokenerror() {
  strcat(ntriplebuilder_interactions, "reporttokenerror()");
}

int main() {
  ntriplebuilder_setreporttokenerror(ntriplebuilder_reporttokenerror);
  ntriplereader_read();
  if (strcmp(ntriplebuilder_interactions, "reporttokenerror()") != 0) {
    fprintf(stderr,
	    "error: expect ntriplebuilderspy_interactions to be \"%s\", got \"%s\"",
	    "reporttokenerror()",
	    ntriplebuilder_interactions);
    exit(EXIT_FAILURE);
  }
}
