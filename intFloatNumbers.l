/* 3.Count no of Int and Float */

%{
	#include<stdio.h>
	int numOfInt = 0, numOfFloat = 0;
%}

%%
[0-9]+"."[0-9]+ {printf("Decimal Number\n"); numOfFloat++;}
[0-9]+ {printf("Integer Number\n"); numOfInt++;}

@ {return 0;}
%%

int yywrap()
{
	return 1;
}

int main()
{
	yylex();
	printf("Number of Decimal Numbers:%d\nNumber of Integer Numbers: %d\n",numOfFloat,numOfInt);
	return 0;
}
