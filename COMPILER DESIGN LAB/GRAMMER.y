%{
#include<stdio.h>
#include<stdlib.h>
%}
%token A B
%%
str: s '\n' {  return 0;}
s : A s B   
 |  A s 
 |  s B 
 | ;
%%
main()
{
printf(" Type the String ?\n");
yyparse();
printf(" Valid String\n ");
}
int yyerror()
{
printf("  Invalid String.\n");  exit(0);
 }
