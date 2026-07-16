%{
#include<stdio.h>
int count=0;
%}

%%
"//".* { count++; }
.|\n {}
%%

int main(){
	printf("enter a statement: ");
	yylex();
	printf("occurence: %d",count);
	return 0;
}

int yywrap(){

	return 1;
}
