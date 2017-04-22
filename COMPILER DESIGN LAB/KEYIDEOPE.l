%option noyywrap
%{
	//a program to identify C identifiers, operators, keywords
	#include<stdio.h>
%}
%%
if|else|switch|break|for|auto|do|while|int|float|char|continue {printf(" It is a keyword\n");}
[a-zA-Z][-a-zA-z0-9]*	{printf(" It is an identifier\n");}
"+"|"-"|"*"|"%"|"/"|"&"|"|"|"("|")"|"!"|"="|"==" {printf(" It is an operator\n");}
%%
int main(int argc,char *argv[])
{  
        if(argc!=2)
        {
             printf("Something wrong with command line arguments");
             exit(0);
        }
	yyin=fopen(argv[1],"r");
	if(yyin)
	        yylex();
	else
	        printf("Problem with file opening\n");
	return 0;
}
