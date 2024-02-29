%{
#include<stdio.h>
int ic,fc;
%}
%%
[-+]?[0-9]* {ic++;}
[-+]?[0-9]*[.][0-9]* {fc++;}
"end" {return 0;}
%%
int yywrap()
{	return 1;}
int main()
{
	printf("enter s:");
	yylex();
	printf("ic = %d fc = %d",ic,fc);
}

