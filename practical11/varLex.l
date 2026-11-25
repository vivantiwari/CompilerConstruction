%{
#include<stdio.h>
#include "y.tab.h"
%}

%%
"int"|"char"|"float" {return DATATYPE;}
[a-zA-Z_][a-zA-Z0-9_]* {return ID;}
[0-9]+ {return NUMBER;}
[\t\n] {}
"," {return ',';}
"=" {return '=';}
";" {return ';';}
. {}
%%

int yywrap(){
	return 1;
}