%{
#include<stdio.h>
int com_cnt=0,kwd_cnt=0,id_cnt=0,wd_cnt=0,ln_cnt=0,sp_cnt=0;
%}

%%
"//".* {com_cnt++;}
"auto"|"break"|"case"|"char"|"const"|"continue"|"default"|"do"|"double"|"else"|"enum"|"extern"|"float"|"for"|"goto"|"if"|"int"|"long"|"register"|"return"|"short"|"signed"|"sizeof"|"static"|"struct"|"switch"|"typedef"|"union"|"unsigned"|"void"|"volatile"|"while" {kwd_cnt++;}
[a-zA-Z][a-zA-Z]* {wd_cnt++;}
[a-zA-Z_][a-zA-Z0-9_]* {id_cnt++;}
\n {ln_cnt++;}
" " {sp_cnt++;}
.|\n {}
%%

int main(){
	printf("Enter a c program : ");
	yylex();
	printf("Number of comments : %d\n Number of keywords : %d\nNumber of identifiers : %d\nNumber of words : %d\nNumber of lines : %d\nNumber of spaces : %d\n",com_cnt,kwd_cnt,id_cnt,wd_cnt,ln_cnt,sp_cnt);
	return 0;
}

int yywrap(){
	return 1;
}