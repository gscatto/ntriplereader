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

%token GREATERTHANSIGN
%token LESSTHANSIGN
%token TEXT

%%

uri : LESSTHANSIGN TEXT GREATERTHANSIGN { printf("ntriplesbuilder_adduri(\"%s\")", $2); }