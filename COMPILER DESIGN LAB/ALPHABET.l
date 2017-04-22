%option noyywrap
%{
	#include<stdio.h>
%}
%%
[a-zA-Z] { printf("It is an alphabet");}
%%
int main()
{
	yylex();
	return 0;
}
