/*4.List out words of length and Starting with "A" */

%{
    #include<stdio.h>
    int length;
    int fun(int l);
%}

%%
[a-zA-Z0-9]+ {length = yyleng; fun(length);}

@ {return 0;}
%%

int fun(int l)
{
    if(yytext[0] == 'A')
    {
        if(l == 3)
            printf("%s is word with length 3\n", yytext);
        /*
        else
                printf("word is not of length 3");
        */
    }
    /*
    else
        printf("word is not Starting with A");
    */
    return 0;
}

int yywrap(){
    return 1;
}

int main()
{
    yylex();
    return 0;
}


