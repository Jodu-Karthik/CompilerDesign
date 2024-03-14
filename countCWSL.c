/*2.Count no of Chars, lines, words */

%{
	#include<stdio.h>
	int lc = 0, sc = 0, tc = 0, ch = 0, c = 0, wc = 0;
%}

%%
\n {lc++;}
[ \t] {sc++;}
\t {tc++;}
[a-zA-Z0-9]+ {wc++; c += yyleng;}
. {ch++; c++;}
"|" {return 0;}
%%

int yywrap()
{
	return 1;
}

int main()
{
	yylex();
	printf("Lines Count %d\n", lc);
	printf("Spaces Count %d\n", sc);
	printf("Tabs Count %d\n", tc);
	printf("Charecters Count %d\n", c);
	printf("Words Count %d\n", (wc + ch));
}

