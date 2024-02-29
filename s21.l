%{
#include<stdio.h>
int length;
%}

%%
[a-zA-Z0-9]+ {length=yyleng;fun(length);}
%%

fun(int length)
{
     if(yytext[0]=='A')
      {
        if(length==3)
        {
           printf("%s is word of length 3",yytext);
        }
        else
         printf("%s is not length of 3",yytext);
       
     }
     else
      printf("%s is word of not having first char as A",yytext);
}

int yywrap()
{}

int main()
{
  yylex();
   return 0;
   }
