%option noyywrap
%{
	//a program to identify C identifiers, operators, keywords
	#include<stdio.h>
%}
%%
if|else|switch|break|for|auto|do|while|int|float|char|continue {printf("It is a keyword");}
[a-zA-Z][-a-zA-z0-9]*	{printf("It is an identifier");}
"+"|"-"|"*"|"%"|"/"|"&"|"|"|"("|")"|"!"|"="|"==" {printf("It is an operator");}
%%
int main()
{
	printf("Enter value: ");
	yylex();
	return 0;
}
