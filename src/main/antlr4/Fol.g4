grammar Fol;
logic :
    term # termInLogic
  | 'False' # false
  | 'True' # true
  | '(' logic ')' # wrap
  | NOT '(' logic ')' # not
  | logic OR logic # or
  | logic AND logic # and
  | logic IMPL logic # implication
  | FORALL VAR+ '.' logic # forall
  | EXISTS VAR+ '.' logic # exists
  ;

term :
    VAR '(' term* ')' # predicate
  | VAR # variable
  ;

AND : '∧'|'and';
OR : '∨'|'or';
NOT : '¬'|'not';
IMPL : '→'|'=>';
FORALL : '∀'|'forall';
EXISTS : '∃'|'exists';
fragment ALPHA : [a-zA-Z];
fragment DIGIT : [0-9];
VAR : ALPHA (ALPHA|DIGIT)*;
WS : [ \t\r\n]+ -> skip;
