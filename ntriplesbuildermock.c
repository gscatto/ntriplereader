#include "ntriplesbuilder.h"

#include <stdio.h>

void ntriplesbuilder_clearstatement() {
  printf("ntriplesbuilder_clearstatement();\n");
}

void ntriplesbuilder_buildstatement() {
  printf("ntriplesbuilder_buildstatement();\n");
}

void ntriplesbuilder_buildsubject() {
  printf("ntriplesbuilder_buildsubject();\n");
}

void ntriplesbuilder_clearsubject() {
  printf("ntriplesbuilder_clearsubject();\n");
}

void ntriplesbuilder_buildpredicate() {
  printf("ntriplesbuilder_buildpredicate();\n");
}

void ntriplesbuilder_clearpredicate() {
  printf("ntriplesbuilder_clearpredicate();\n");
}

void ntriplesbuilder_clearobject() {
  printf("ntriplesbuilder_clearobject();\n");
}

void ntriplesbuilder_buildobject() {
  printf("ntriplesbuilder_buildobject();\n");
}

void ntriplesbuilder_clearliteral() {
  printf("ntriplesbuilder_clearliteral();\n");
}

void ntriplesbuilder_buildliteral() {
  printf("ntriplesbuilder_buildliteral();\n");
}

void ntriplesbuilder_cleardatatype() {
  printf("ntriplesbuilder_cleardatatype();\n");
}

void ntriplesbuilder_builddatatype() {
  printf("ntriplesbuilder_builddatatype();\n");
}

void ntriplesbuilder_addstring(const char *s) {
  printf("ntriplesbuilder_addstring(\"%s\");\n", s);
}

void ntriplesbuilder_adduri(const char *u) {
  printf("ntriplesbuilder_adduri(\"%s\");\n", u);
}
