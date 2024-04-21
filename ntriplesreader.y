%{

#include "y.tab.h"

#include <stdio.h>
#include <string.h>

extern int yyparse();
extern int yylex();
extern int starttoken;

void yyerror(const char *str) {
    fprintf(stderr, "error: %s\n", str);
}

int main(int argc, char *argv[]) {
    if (argc > 1) {
        char *t = argv[1];
        if (strcmp(t, "START_URI") == 0) {
            starttoken = START_URI;
        } else {
            fprintf(stderr, "unrecognized start token \"%s\"\n", t);
            return 1;
        }
    }
    return yyparse();
}

%}

%start start

%token <text> TEXT
%token GREATERTHANSIGN
%token LESSTHANSIGN
%token START_URI

%union {
    char text[1024];
}

%%

start : START_URI uri
      ;

uri : LESSTHANSIGN TEXT GREATERTHANSIGN { printf("ntriplesbuilder_adduri(\"%s\")", $2); }