%{
#include<stdio.h>
#include<stdlib.h>
int yyerror(char*s);
int yylex();
%}

%token NUM

%%
E:E'+'T|T;
T:T'-'F|F;
F:F'/'U|U;
U:U'*'G|G;
G:'('E')'|NUM;
%%

int yyerror(char*s){
	printf("Invalid Expression!!");
	exit(0);
}

int main(){
	printf("Enter an expression: ");
	yyparse();
	printf("Valid Expression");
	return 0;
}
