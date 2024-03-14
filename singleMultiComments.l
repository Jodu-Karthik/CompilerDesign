/*5.List out All C - Like Comments - Single, Multi */

%{
	#include<stdio.h>
	#include<stdlib.h>
%}

%%
\/\/(.*){};
\/\*(.*\n)*.*\*\/{};
%%

int yywrap()
{
	return 1;
}

int main()
{
	yyin = fopen("commentsin.c","r");
	yyout = fopen("commentsout.c","w");
	yylex();
	return 0;
}