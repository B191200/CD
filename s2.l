%{
#include<stdio.h>
int numofint=0,numoffloat=0;
%}

%%
[0-9]+"."[0-9]+ {ECHO;printf("\nDecimal Number");numoffloat++;}
[0-9]+ {ECHO;printf("\nInteger NUmber\n");numofint++;}
%%



int yywrap()
{
  return 1;
}

int main()
{
   yylex();
   printf("NUM of Decimal Numbers:%d\nnumber of integer:%d\n",numoffloat,numofint);
   return 0; 
}

