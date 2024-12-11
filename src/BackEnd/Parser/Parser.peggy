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

ID = [_a-z]i[a-z0-9_]i* ;

STRING =
	'"'([^\n\"\\]/[\\].)*'"' /
    "'"([^\n\'\\]/[\\].)*"'" ;

REGEX = "[" (CHAR ("-" CHAR)?)+ "]" ;

CHAR = [a-zA-Z0-9 "'\^\\._\+\-\*/\%] ;

_ = [ \t\r\n]* ;