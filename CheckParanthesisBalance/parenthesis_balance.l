%{
#include "y.tab.h"
%}
%%
[ \t] ;
"(" return OPEN;
")" return CLOSE;
\n|. return yytext[0];
%%
int yywrap () {
  return 1;
}
