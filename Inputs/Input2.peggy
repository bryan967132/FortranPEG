GRAMMAR = (_ RULE _ ";")+ _ ;

RULE = ID _ "=" RULEBODY;

RULEBODY = (_ OPERATION)+ (_ "/" (_ OPERATION)+)* ;

OPERATION = VALUE (_ ("?" / "*" / "+"))? ;

VALUE =
    ID                   /
    STRING               /
    REGEX                /
    "."                  /
    "(" _ RULEBODY _ ")" ;

ID = [_a-zA-Z]+[a-zA-Z0-9_]* ;

STRING =
	'"'([^\n\"\\]/[\\].)*'"' /
    "'"([^\n\'\\]/[\\].)*"'" ;

REGEX = "[" (CHAR ("-" CHAR)?)+ "]" ;

CHAR = [a-zA-Z0-9 "'\^\\._\+\-\*/\%] ;

_ = [ \t\r\n]* ;