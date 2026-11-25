
%{
#include<stdio.h>
#include "y.tab.h"
%}

%%

[a-zA-Z]+ {
    int i=0;
    while((yylval.s[i]=yytext[i])!='\0') i++;
    return ID;
}

[0-9]+ {
    int i=0;
    while((yylval.s[i]=yytext[i])!='\0') i++;
    return NUM;
}

[ \t\n] ;
. return yytext[0];

%%

int yywrap()
{
    return 1;
}
