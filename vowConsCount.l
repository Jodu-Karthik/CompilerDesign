/*1. Count Vowels Consonants */


%{
      #include<stdio.h>
	int vowCount = 0;
	int consCount = 0;
%}

%%
[aeiouAEIOU] {vowCount++;}
[a-zA-Z]  {consCount++;}
\n {return 0;}
%%


int yywrap()
{
	return 1;
}
int main()
{
	printf("Enter the string to check Vowels and Consonants: ");
	yylex();
	printf("No of Vowels: %d \nNo of Consonants: %d \n", vowCount, consCount);
	return 0;
}
