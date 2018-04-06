/*  Python List Parser
 *
 *  Rodrigo Oliveira Caus - 186807
 *
 */

%{
#include <stdlib.h>

void yyerror(char *);
#include "y.tab.h"

%}

%%

\[ {
    return ABRECH;
}

\] {
    return FECHACH;
}

\, {
    return VIRGULA;
}

[0-9]+ {
    return INT;
}

([A-Za-z0-9\_]+) {
    return PALAVRA;
}

\"([A-Za-z0-9\_]+)\" {
    return STRING;
}

\n {
    return EOL;
}

. ;

%%

int yywrap() {
  return 1;
}
