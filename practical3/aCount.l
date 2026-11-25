%{
#include<stdio.h>
int count=0;
%}

%%
" ""A"[A-Za-z]*|" ""a"[A-Za-z]*|"A"[A-Za-z]*" "|"a"[A-Za-z]*" " {count++;}
.|\n {}
%%

int main(){
	printf("Enter a statement : ");
	yylex();
	printf("Number of words starting with A is %d\n",count);
	return 0;
}

int yywrap(){
	return 1;
}