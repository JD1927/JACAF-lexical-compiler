%option noyywrap
%option yylineno
/* Analizador para el lenguaje JACAF */

%{
/* Math se requiere para las conversiones */
#include <math.h>
int errorCount = 0;
%}

DIGIT         [0-9]
UNDERSCORE    [_]
CHARACTER     [a-zA-Z]
ID            ([_]|[a-zA-Z])+([_]|[a-zA-Z]|[0-9])*
STRING1       (\")([^\"\n]*)(\")
STRING2       \`[^\`]*(\$\{)([_]|[a-zA-Z])+([_]|[a-zA-Z]|[0-9])*(\})[^\`]*\`
%%

"exit" { return 0; }

"class"|"abstract"|"var"|"method"|"private"|"public" { printf("Reserved word: %s\n", yytext); }

"return"|"static"|"void"|"break"|"default"|"print"|"read" { printf("Reserved word: %s\n", yytext); }

"if"|"else"|"switch"|"case"|"for"|"do"|"while" { printf("Reserved word: %s\n", yytext); }

"integer"|"double"|"string"|"boolean" { printf("Data type: %s\n", yytext); }

"+"|"-"|"*"|"/" { printf("Arithmetic operator: %s\n", yytext); }

"<"|">"|">="|"<="|"=="|"!=" { printf("Relational operator: %s\n", yytext); }

"and"|"or"|"not" { printf("Logic operator: %s\n", yytext); }

"="|"+="|"-=" { printf("Assign operator: %s\n", yytext); }

"{"|"}"|";"|"("|")"|"["|"]"|":" { printf("Separator: %s\n", yytext); }

"true"|"false" { printf("Boolean: %s\n", yytext); }

-?{DIGIT}+ { printf("Integer: %s (%d)\n", yytext, atoi(yytext)); }

-?{DIGIT}+"."{DIGIT}* { printf("Complex number: %s (%g)\n", yytext, atof(yytext)); }

{STRING1} { printf("String: %s\n", yytext); }

{STRING2} { printf("String with posible immersed concatenation: %s\n", yytext); }

{ID} { printf("Identifier: %s\n", yytext); }

(\/\*[\w\'\s\r\n\*]*\*\/) { printf("Comment: %s\n", yytext); }

[ \t\n]+  /* Se come los espacios en blanco */

. { 
  printf("[Lexical error: (%s), in line (%d)]\n", yytext, yylineno);
  errorCount = errorCount + 1;
}

%%

int main()
{
  printf("[Analyzing some JACAF's elements]\n");
  printf("--------------------------------\n\n");
  yyin = fopen("../test/example.jacaf", "r");
  yylex();
  printf("[Analyzed lines (%d)], [encountered errors (%d)]\n", yylineno, errorCount);
  printf("--------------------------------\n");
  printf("Press a key to finish...\n");
  getchar();
}