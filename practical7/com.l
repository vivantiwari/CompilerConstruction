
%{
#include<stdio.h>
%}

%%

.*com\n    { printf("Valid line\n"); }

.*\n       { printf("Invalid line\n"); }

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter text lines:\n");
    yylex();
    printf("Vivan Tiwari 24070521133 B2");
    return 0;
}
