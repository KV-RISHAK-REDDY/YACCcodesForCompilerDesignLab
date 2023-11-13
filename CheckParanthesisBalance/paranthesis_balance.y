%{
  #include <ctype.h>
  #include <stdio.h>
  int yyerror();
  int yylex();
%}

%token OPEN CLOSE
%%
lines : s '\n' {printf("OK\n"); }
;
s :
| OPEN s CLOSE s
;
%%

int yyerror(char * s)
{
  printf("Imbalanced\n");
  return 1;
}
int main(void) {
  yyparse();
  return 0;
}
