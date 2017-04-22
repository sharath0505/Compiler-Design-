%{
#include "y.tab.h"
%}

%%
"if" {return IF;}
[sS][0-9]* {return S;}
"<"|">"|"=="|"<="|">="|"!=" {return RELOP;}
[0-9]+ {return NUMBER;}
[a-z][a-zA-Z0-9_]* {return ID;}
\n {return NL;}
. {return yytext[0];}
%%


/*

yacc -d nif.y
lex nif.l
cc y.tab.c lex.yy.c -ly -ll
./a.out
enter the statement
if(a<b){s}    
No. of nested if statements=1

 ./a.out
enter the statement
if(a>b){if(a>b){s}}
No. of nested if statements=2

*/