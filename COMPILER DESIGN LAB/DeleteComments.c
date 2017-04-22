%{
       #include<stdio.h>
%}
%%
\/\/* ;
\/\*(.*\n)*.*\*\/ ;
%%
int main(int argc,char ** argv)
{
        
        yyin = fopen(argv[1],"r");
        yyout= fopen(argv[2],"w");
        if(yyin)
        {
                yylex();
                
        }
}
int yywrap()
{
        return 1;
}