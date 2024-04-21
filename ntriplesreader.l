%{

#include "y.tab.h"

%}

%option noyywrap

%%

. {
    fprintf(stderr, "error: unrecognized character '%c'\n", *yytext);
    return *yytext;
}

%%