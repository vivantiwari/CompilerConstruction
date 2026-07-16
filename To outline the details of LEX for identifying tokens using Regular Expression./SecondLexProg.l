%{
#include<stdio.h>
int count=0;
%}

%%
"sec B" {count++;}
.|\n {}
%%

int main(){
	printf("Enter a statement: ");
	yylex();
	printf("Occurence: %d",count);
	return 0;
}

int yywrap(){
	return 1;
}