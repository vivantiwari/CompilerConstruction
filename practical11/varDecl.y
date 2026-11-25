%{
#include<stdio.h>
#include<stdlib.h>
int yylex(void);
int yyerror(char *s);
%}

%token NUMBER
%token ID
%token DATATYPE

%%
S:A B { printf("valid variable declaration\n"); }
A:DATATYPE;
B:C ',' B
  |C ';'
  ;
C:ID '=' NUMBER
  |ID
  ;
%%

int yyerror(char *s){
	printf("invalid variable declaration\n");
	return 0;
}

int main(){
	printf("initialize variable:\n");
	yyparse();
	printf("Vivan Tiwari 24070521133 B2");
	return 0;
}

