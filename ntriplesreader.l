%{

#include "y.tab.h"

int starttoken = START_STATEMENTS;

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

"\n" {
    return NEWLINE;
}

" ." {
    return FULLSTOP;
}

"\t" {
    return TAB;
}

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

[a-zA-Z0-9\-:/._#]+ {
    strcpy(yylval.text, yytext);
    return URI;
}

[èé ()]+ {
    strcpy(yylval.text, yytext);
    return TXT;
}

. {
    fprintf(stderr, "error: unrecognized character '%c'\n", *yytext);
    return *yytext;
}

%%