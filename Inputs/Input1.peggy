EXP =
	EXP8 '?' EXP8 ':' EXP8 /
    EXP8 ;

EXP8 = EXP7 (_ '||' _ EXP7)* ;

EXP7 = EXP6 (_ '&&' _ EXP6)* ;

EXP6 =
    '!' _ EXP5 /
    EXP5 ;

EXP5 = EXP4 (_ ('==' / '!=') _ EXP4)* ;

EXP4 = EXP3 (_ ('<=' / '>=' / '<' / '>') _ EXP3)* ;

EXP3 = EXP2 (_ ('+' / '-') _ EXP2)* ;

EXP2 = EXP1 (_ ('*' / '/' / '%') _ EXP1)* ;

EXP1 =
    '-' _ EXP1 /
    PRIMITIVE ;
    
PRIMITIVE =
    TK_float  /
    TK_int    /
    TK_char   /
    TK_string /
    'true'    /
    'false'   /
    ACCESS    /
    '(' _ EXP _ ')' ;

ACCESS =
    TK_id (_ '[' _ EXP _ ']')* ;

TK_float = [0-9]+'.'[0-9]+ ;

TK_int = [0-9]+ ;

TK_char = "'"([^\n\"\\]/[\\].)"'" ;

TK_string = '"'([^\n\"\\]/[\\].)*'"' ;

TK_id = [_]*[a-zA-Z][a-zA-Z0-9\_]* ;

COMMENTS = '//'[^\r\n]*[\n] ;
COMMENTM = [/][*][^*]*[*]+([^/*][^*]*[*]+)*[/] ;
_ = ([ \t\r\n] / COMMENTS / COMMENTM)* ;