%{

#include "y.tab.h"

%}

%option noyywrap

%%

"<" {
    return LESSTHANSIGN;
}

">" {
    return GREATERTHANSIGN;
}

[a-z0-9:/.]+ {
    strcpy(yylval.text, yytext);
    return TEXT;
}

. {
    fprintf(stderr, "error: unrecognized character '%c'\n", *yytext);
    return *yytext;
}

%%