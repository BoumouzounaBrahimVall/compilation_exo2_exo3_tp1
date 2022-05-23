/*TP1 EXERCICE 3: */

%{
#include<stdio.h>
%}

%%
[0-9]+ {printf("%s :\t Un entier \n", yytext);}
[0-9]+[\.][0-9]+ {printf("%s :\t Un reel \n", yytext);}
[A-Z][a-z0-9A-Z]+ {printf("%s :\t ID   \n", yytext);}
\n {printf("%s :\tRetourer à la ligne\n", yytext);}
. {printf("%s Erreur \n", yytext);}
%%


int yywrap(){}
int main()
{
FILE *fp;
fp = fopen("exercice2.txt","r");
yyin = fp;
yylex();
return 0;
}