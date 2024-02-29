%{
#include<stdio.h>
int vc=0,cc=0,d=0;
%}
%%
[aeiouAEIOU] {vc++;}
[a-zA-Z] {cc++;}
"\n" {printf("no of vowels=%d and no of consonants=%d",vc,cc);
{vc=0,cc=0;}}
. {d++;}
%%
int yywrap(){
return 1;
}
int main()
{
printf("enter a string:");
yylex();
}
