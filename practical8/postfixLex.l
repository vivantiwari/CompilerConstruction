%{
#include<stdio.h>
#include<stdlib.h>
#include "y.tab.h"
%}

%%
[0-9]+ {yylval=atoi(yytext); return NUMBER;}
[+*] {return yytext[0];}
[\t] {/*ignore spaces and tables*/}
\n {return '\n';}
. 
%%

int yywrap(){
	return 1;
}
