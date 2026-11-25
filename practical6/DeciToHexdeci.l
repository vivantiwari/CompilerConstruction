%{
#include<stdio.h>
%}

%%
[0-9]+ {
    int n = atoi(yytext);
    printf("%X", n);
}

.|\n {
    printf("%s", yytext);
}
%%

int main(){
    printf("Decimal to Hexadecimal:\n");
    yylex();
    printf("Vivan Tiwari\n24070521133\nB2");
    return 0;
}

int yywrap(){
    return 1;
}
