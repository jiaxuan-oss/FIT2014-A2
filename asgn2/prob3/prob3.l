/*  flex  file for lexical analyser for PLUS-TIMES-POWER expressions,
    which involve simple arithmetic for nonnegative integers
    with addition, multiplication and powers.
    Graham Farr, Monash University
    Initially, copied from the Wikipedia page for  lex, then modified over time.
    Last updated:  11 September 2021
*/
    
/*** Definition section ***/

%{
/* C code to be copied verbatim */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
void yyerror(char *);
#include "quant.h"
/*
#include "y.tab.h"
*/
%}


%%
    /*** Rules section ***/

            /* yytext is a string containing the matched text. */

    /* Nonnegative integers ...  */

(I)   {
            printf("Token: %s;  Lexeme: %s\n", yytext,yytext);
/*
            yylval.num = atof(yytext);
            return  NUMBER;
*/
        }

(H)   {
            printf("Token: %s;  Lexeme: %s\n", yytext,yytext);
/*
            yylval.num = atof(yytext);
            return  NUMBER;
*/
        }

(X)   {
            printf("Token: %s;  Lexeme: %s\n", yytext,yytext);
/*
            yylval.num = atof(yytext);
            return  NUMBER;
*/
        }

(Z)   {
            printf("Token: %s;  Lexeme: %s\n", yytext,yytext);
/*
            yylval.num = atof(yytext);
            return  NUMBER;
*/
        }

(CNOT)   {
            printf("Token: %s;  Lexeme: %s\n", yytext,yytext);
/*
            yylval.num = atof(yytext);
            return  NUMBER;
*/
        }

(TOF)   {
            printf("Token: %s;  Lexeme: %s\n", yytext,yytext);
/*
            yylval.num = atof(yytext);
            return  NUMBER;
*/
        }


\(x\)   {
        printf("Token: KRONECKERPROD;  Lexeme: %s\n", yytext);
/*
            return  *yytext;
*/
        }

[*\(\)]   {
            printf("Token and Lexeme: %s\n", yytext);
/*
            return  *yytext;
*/
        }

\n      {
            printf("Token and Lexeme: <newline>\n");
/*
            return  *yytext;
*/
        }


[ \t]   {    }     /*  skip whitespace  */


.       {
           printf("Invalid character.\n");
/*
           yyerror("invalid character");
*/
        }
     /*  will match any single character that does not match
         any of the above patterns
     */


%%
    /*** C Code section ***/

void yyerror(char *s) {
      fprintf(stderr, "line %d: yytext = %s.  Error msg: %s.\n", yylineno, yytext, s);
}


int yywrap(void) {
   return 1;
}


/*  comment out the function  main()  if using  lex  with  yacc   */
int main(void) {
    yylex();
    return 0;
}
