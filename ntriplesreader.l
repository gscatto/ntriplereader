%{

#include "y.tab.h"

int starttoken = 0;

%}

%option noyywrap

%%

%{

if (starttoken) {
   int rv = starttoken;
   starttoken = 0;
   return rv;
}

%}

"^^" {
    return DOUBLECARET;
}

"\"" {
    return QUOTATIONMARK;
}

"<" {
    return LESSTHANSIGN;
}

">" {
    return GREATERTHANSIGN;
}

[a-z0-9:/. ]+ {
    strcpy(yylval.text, yytext);
    return TEXT;
}

. {
    fprintf(stderr, "error: unrecognized character '%c'\n", *yytext);
    return *yytext;
}

%%