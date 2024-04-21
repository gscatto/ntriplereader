%{

#include <stdio.h>

extern int yyparse();
extern int yylex();

void yyerror(const char *str) {
    fprintf(stderr, "error: %s\n", str);
}

int main() {
    return yyparse();
}

%}

%start uri

%token <text> TEXT
%token GREATERTHANSIGN
%token LESSTHANSIGN

%union {
    char text[1024];
}

%%

uri : LESSTHANSIGN TEXT GREATERTHANSIGN { printf("ntriplesbuilder_adduri(\"%s\")", $2); }