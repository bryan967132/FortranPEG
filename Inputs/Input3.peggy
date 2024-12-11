start
    = concat
    / exponentiation / statement
    ;

concat
    = string ("+" string)*;

string
    = '"' [a-zA-Z0-9]* '"'
    ;

exponentiation
    = primary ("^" exponentiation)?
    / primary
    ;

primary
    = integer
    / "(" exponentiation ")";

statement
    = variable ("=" expression)?
    ;

variable
    = [a-zA-Z]+
    ;

expression
    = integer
    / variable
    ;

integer
    = [0-9]+;