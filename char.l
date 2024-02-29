%{
#include<stdio.h>
int sc=0,tc=0,lc=0,cc=0;
%}
%%
\n {lc++;}
" " {sc++,wc++;}
\t {tc++;}
[0-9a-zA-Z] {cc++;}
"qw" {return 0;}
%%
int yywrap(){
return 1;
}
int main()
{
	printf("string s:");
	yylex();
	printf("sc = %d tc = %d lc = %d wc =%d",sc,tc,lc,cc);
}
