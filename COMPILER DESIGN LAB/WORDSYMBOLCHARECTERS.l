%option noyywrap
%{
	//a program to count number of words, symbols, characters and lines
	#include<stdio.h>
	int c=0,w=0,s=0,l=0;
%}
%%
[\n] {l++;}
[a-zA-Z] {c++;}
[a-zA-z]*	{w++;}
"+"|"-"|"*"|"%"|"/"|"&"|"|"|"("|")"|"!"|"="|"==" {s++;}
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
	{
	        yylex();
	        printf("\n\nNumber of\ncharacters=%d\nwords=%d\nsymbols=%d\nlines=%d\n",c,w,s,l);
	}
	else
	        printf("Problem with file opening\n");
	return 0;
}
