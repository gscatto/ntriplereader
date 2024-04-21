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
        } else if (strcmp(t, "START_STRING") == 0) {
            starttoken = START_STRING;
        } else if (strcmp(t, "START_SUBJECT") == 0) {
            starttoken = START_SUBJECT;
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
%token QUOTATIONMARK
%token START_STRING
%token START_URI
%token START_SUBJECT

%union {
    char text[1024];
}

%%

start : START_URI uri
      | START_STRING string
      | START_SUBJECT subject
      ;

subject : clearsubject uri { printf("ntriplesbuilder_buildsubject();\n"); }
        ;

clearsubject : { printf("ntriplesbuilder_clearsubject();\n"); }
             ;

string : QUOTATIONMARK TEXT QUOTATIONMARK { printf("ntriplesbuilder_addstring(\"%s\");", $2); }

uri : LESSTHANSIGN TEXT GREATERTHANSIGN { printf("ntriplesbuilder_adduri(\"%s\");\n", $2); }