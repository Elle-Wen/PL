%{


%}

%token class
%token id
%token def
%token type
%token params
%token e
%token body
%token expr 
%token int
%token bool 

%left 
%left 

%start class 

%%

class:
    | e = class; id ; lc ; colon ; id ; rc ; lb ; d = def ; rb ; star ; rb ; {} // what should be the return 