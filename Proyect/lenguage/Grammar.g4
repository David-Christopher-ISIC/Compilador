grammar Grammar;

program:(statement NEWLINE)* EOF;

statement: assing | print | if_statement | for_statement;

/* Definimos la asignación */
/* assing: ID '=' expr;*/

/*Definimos la asignación con tipo*/
assing: type ID '=' expr;

/*Definimos los tipos*/
type: 'int' | 'string';

/* Definimos print */
print:'print' '('expr')';

/* Definimosif */
if_statement: 'if' '('expr')' block;

/* Definimos for */
for_statement: 'for' '('assing';'expr';'assing')' block;

/* Definimos block */
block:'{'(statement NEWLINE)*'}';

/* Definimos expr */
expr: expr op=('*'|'/') expr
    |expr op=('+'|'-') expr
    |expr op=('>'|'<'|'>='|'<=') expr
    |expr op=('=='|'!=') expr
    |ID
    /*Definición de valores numéricos*/
    |NUMBER
    /*Agregamos string a la expresión*/
    |STRING
    |'('expr')'
    ;

/*Definición de elementos finales */
ID: [a-zA-Z][a-zA-Z_0-9]*;

/*Agregamos reglas para los números */
NUMBER:[0-9]+;

/*Agregamos reglas para el String */
STRING:'"'(~["\r\n])*?'"';

NEWLINE:[\r\n];
WS:[\t]-> skip;
SEMI:';';