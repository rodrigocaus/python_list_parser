/*  Python List Parser
 *
 *  Rodrigo Oliveira Caus - 186807
 *
 */

%{

#include <stdio.h>
#include <stdlib.h>
void yyerror(char *s);
int yylex(void);

%}

%token ABRECH FECHACH VIRGULA INT PALAVRA STRING EOL
%left VIRGULA

%%

PROGRAMA:
    PROGRAMA CONTEUDO EOL { printf("OK\n");}
    |
    ;

LISTA:
    ABRECH CONTEUDO FECHACH
    | ABRECH FECHACH

CONTEUDO:
    INT
    | PALAVRA
    | STRING
    | LISTA
    | CONTEUDO VIRGULA CONTEUDO
    ;

%%

void yyerror(char *s) {
    printf("ERRO\n");
}

int main() {
  yyparse();
    return 0;
}
