%{
#include<stdio.h>
int t=1;
%}

%union {
    char s[20];
}

%token <s> ID NUM
%type <s> E

%left '+' '-'
%left '*' '/'

%%

S : E ;

E : E '+' E {
        printf("t%d = %s + %s\n",t,$1,$3);
        sprintf($$,"t%d",t++);
    }
  | E '-' E {
        printf("t%d = %s - %s\n",t,$1,$3);
        sprintf($$,"t%d",t++);
    }
  | E '*' E {
        printf("t%d = %s * %s\n",t,$1,$3);
        sprintf($$,"t%d = %s * %s\n",t,$1,$3);
        sprintf($$,"t%d",t++);
    }
  | E '/' E {
        printf("t%d = %s / %s\n",t,$1,$3);
        sprintf($$,"t%d",t++);
    }
  | '(' E ')' {
        int i=0;
        while(($$[i]=$2[i])!='\0') i++;
    }
  | ID {
        int i=0;
        while(($$[i]=$1[i])!='\0') i++;
    }
  | NUM {
        int i=0;
        while(($$[i]=$1[i])!='\0') i++;
    }
  ;

%%

int main()
{
    printf("Enter expression: ");
    yyparse();
    printf("Vivan Tiwari 24070521133 B2\n");
    return 0;
}

int yyerror(char *s)
{
    printf("Invalid expression\n");
    return 0;
}
