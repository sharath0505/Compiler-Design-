%option noyywrap
%{
#include<stdio.h>
int c=0;
%}
%%
"//".*"\n" {c++;fprintf(yyout,"");}
"/*"[^\n]+"*/" {c++; fprintf(yyout,"");}

"//"[^\n]+[\n] {c++; fprintf(yyout,"");}
"/*" [^"//"]+"*/" {c++; fprintf(yyout,"");}
%%
int main(int argc, char *argv[])
{
	if (argc!=3)
	{
		printf("Error with opening file");
		exit(0);
	}
	yyin=fopen(argv[1],"r");
	yyout=fopen(argv[2],"w");
	if (yyin)
	{
		yylex();
		printf("comments= %d",c);
	}
	else
		printf("error with file");
}
