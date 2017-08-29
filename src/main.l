
%{
#include <stdio.h>
%}


%%

[0-9a-zA-Z]+[0-9a-zA-Z_\.-]*[0-9a-zA-Z]+[@][0-9a-zA-Z_\.-]*[0-9a-zA-Z]+ { printf("%s\n", yytext); }

[0-9a-zA-Z]+[0-9a-zA-Z_\.-]*[0-9a-zA-Z]+[@][0-9a-zA-Z_\.-]*[0-9a-zA-Z]+[-_]+ ;

. ;
[[:space:]] ;

%%

int main() {
  yylex();
  return 0;
}
