%{
#include<stdio.h>
int v=0,c=0;
%}
%%
[aeiouAEIOU] {v++;}
[a-zA-Z] {c++;} 
\n {return 0;}
%%
int yywrap(){
return 1;
}
int main()
{
printf("enter string:");
yylex();
printf("vowels=%d,consonants=%d",v,c);
}

