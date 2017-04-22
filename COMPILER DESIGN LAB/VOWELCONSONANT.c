%{
#include<stdio.h>
int vow=0;
int conso=0;
%}
%%
[aeiouAEIOU] {vow++;}
[a-zA-Z]        {       conso++; }
\n            printf("No. of vowels :=%d\n No. of consonant :=%d\n",vow,conso); vow=0;conso=0;
%%
int main(void)
{ 	int val=yylex();
        
	return 0;
	}
