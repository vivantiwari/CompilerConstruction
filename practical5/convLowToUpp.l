%{
#include<stdio.h>
#include<ctype.h>
%}

%%
[a-z] { printf("%c", toupper(yytext[0])); }
[A-Z] { printf("%c", tolower(yytext[0])); }
.|\n  { printf("%s", yytext); }
%%

int main(){
    printf("Enter a statement : ");
    yylex();
    printf("Vivan Tiwari 24070521133 B2");
    return 0;
}

int yywrap(){
    return 1;
}
