/* lexical grammar */
%lex
%%

\s+                   /* skip whitespace */
[1-9][0-9]*           return 'NAT'
"second"              return 'SECOND'
"minute"              return 'MINUTE'
"hour"                return 'HOUR'
"day"                 return 'DAY'
"week"                return 'WEEK'
"month"               return 'MONTH'
"year"                return 'YEAR'
"seconds"             return 'SECOND'
"minutes"             return 'MINUTE'
"hours"               return 'HOUR'
"days"                return 'DAY'
"weeks"               return 'WEEK'
"months"              return 'MONTH'
"years"               return 'YEAR'
"ago"                 return 'AGO'
<<EOF>>               return 'EOF'
.                     return 'INVALID'

/lex

%start expr

%%

expr
    : multi EOF
        { return $1; }
    | multi AGO EOF
        { return -$1; }
    ;

multi : interval
    | interval multi
        {{ $$ = $1+parseInt($2) }}
    ;

interval
    : NAT SECOND
        { $$ = $1; }
    | NAT MINUTE
        { $$ = $1*60; }
    | NAT HOUR
        { $$ = $1*60*60; }
    | NAT DAY
        { $$ = $1*60*60*24; }
    | NAT WEEK
        { $$ = $1*60*60*24*7; }
    | NAT MONTH
        { $$ = $1*60*60*24*30; }
    | NAT YEAR
        { $$ = $1*60*60*24*365; }
    ;
