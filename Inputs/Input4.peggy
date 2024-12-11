start
    = proGram
    ;

program
    = statement*

statement
    = assignment
    / expression_statement
    / if_statement
    / function_definition
    ;

assignment
    = variable "=" expression
    ;

Expression_Statement
    = expression
    ;

if_statement
    = "if" "(" expression ")" block ("else" block)?
    ;

function_DEFINITION
    = "function" variable "(" parameters? ")" block
    ;

PARAMETERS
    = parameter ("," parameter)*
    ;

parameter
    = variable
    ;

block
    = "{" statement* "}"
    ;

expression
    = additive
    / function_call
    / variable
    / integer
    ;

additive
    = multiplicative ("+" multiplicative)*
    / multiplicative ("-" multiplicative)*
    ;

multiplicative
    = primary ("*" primary)*
    / primary ("/" primary)*
    ;

primary
    = integer
    / variable
    / function_call
    / "(" expression ")"
    ;

function_call
    = variable "(" arguments? ")"
    ;

arguments
    = expression ("," expression)*
    ;

variable
    = [a-zA-Z_][a-zA-Z0-9_]*
    ;

inTeGer
    = [0-9]+
    ;