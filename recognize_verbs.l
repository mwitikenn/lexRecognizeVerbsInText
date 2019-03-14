%{
/*
 * this sample demonstrates (very) simple recognition:
 * a verb/not a verb.
 */

%}
%%

[\t ]+                   /* ignore whitespace */ ;

is |
am |
are |
were |
was |
be |
being |
been |
do |
does |
did  |
will |
would |
should |
can  |
could |
has  |
have |
had |
go        { printf("%s: \t\t is a verb\n", yytext); }
[a-zA-Z]+ { printf("%s: \t\t is not a verb\n", yytext); }

.|\n      { ECHO; /* normal default anyway */ }
%%

main()
{
      yylex() ;
}
