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
        } else if (strcmp(t, "START_PREDICATE") == 0) {
            starttoken = START_PREDICATE;
        } else if (strcmp(t, "START_OBJECT") == 0) {
            starttoken = START_OBJECT;
        } else if (strcmp(t, "START_LITERAL") == 0) {
            starttoken = START_LITERAL;
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
%token START_LITERAL
%token START_OBJECT
%token START_PREDICATE
%token START_STRING
%token START_SUBJECT
%token START_URI

%union {
    char text[1024];
}

%%

start : START_URI uri
      | START_STRING string
      | START_SUBJECT subject
      | START_PREDICATE predicate
      | START_OBJECT object
      | START_LITERAL literal
      ;

subject : clearsubject uri { printf("ntriplesbuilder_buildsubject();\n"); }
        ;

clearsubject : { printf("ntriplesbuilder_clearsubject();\n"); }
             ;

predicate : clearpredicate uri { printf("ntriplesbuilder_buildpredicate();\n"); }
          ;

clearpredicate : { printf("ntriplesbuilder_clearpredicate();\n"); }
               ;

object : clearobject uri buildobject
       | clearobject literal buildobject
       ;

clearobject : { printf("ntriplesbuilder_clearobject();\n"); }
            ;

buildobject : { printf("ntriplesbuilder_buildobject();\n"); }
            ;

literal : clearliteral string buildliteral
        ;

clearliteral : { printf("ntriplesbuilder_clearliteral();\n"); }
             ;

buildliteral : { printf("ntriplesbuilder_buildliteral();\n"); }
             ;

string : QUOTATIONMARK TEXT QUOTATIONMARK { printf("ntriplesbuilder_addstring(\"%s\");\n", $2); }
       ;

uri : LESSTHANSIGN TEXT GREATERTHANSIGN { printf("ntriplesbuilder_adduri(\"%s\");\n", $2); }
    ;