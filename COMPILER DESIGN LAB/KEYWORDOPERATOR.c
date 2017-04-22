%{
        #include<stdio.h>
%}
%%
if|else|switch|break|for|auto|do|while|int|float|char|continue  printf("Its is a keyword\n");
[a-zA-Z][a-zA-Z0-9]*    printf("Identifier\n");
"+"|"-"|"*"|"%"|"/"|"&"|"|"|"("|")"|"!"|"="|"=="      printf("It is an operator\n");
%%
int main()
{       printf("Enter a value");
        yylex();
        return 0;
       
}
