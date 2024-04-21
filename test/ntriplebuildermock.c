#include "ntriplebuilder.h"

#include <stdio.h>

void ntriplebuilder_clearstatement() {
  printf("ntriplebuilder_clearstatement();\n");
}

void ntriplebuilder_buildstatement() {
  printf("ntriplebuilder_buildstatement();\n");
}

void ntriplebuilder_buildsubject() {
  printf("ntriplebuilder_buildsubject();\n");
}

void ntriplebuilder_clearsubject() {
  printf("ntriplebuilder_clearsubject();\n");
}

void ntriplebuilder_buildpredicate() {
  printf("ntriplebuilder_buildpredicate();\n");
}

void ntriplebuilder_clearpredicate() {
  printf("ntriplebuilder_clearpredicate();\n");
}

void ntriplebuilder_clearobject() {
  printf("ntriplebuilder_clearobject();\n");
}

void ntriplebuilder_buildobject() {
  printf("ntriplebuilder_buildobject();\n");
}

void ntriplebuilder_clearliteral() {
  printf("ntriplebuilder_clearliteral();\n");
}

void ntriplebuilder_buildliteral() {
  printf("ntriplebuilder_buildliteral();\n");
}

void ntriplebuilder_cleardatatype() {
  printf("ntriplebuilder_cleardatatype();\n");
}

void ntriplebuilder_builddatatype() {
  printf("ntriplebuilder_builddatatype();\n");
}

void ntriplebuilder_addstring(const char *s) {
  printf("ntriplebuilder_addstring(\"%s\");\n", s);
}

void ntriplebuilder_adduri(const char *u) {
  printf("ntriplebuilder_adduri(\"%s\");\n", u);
}
