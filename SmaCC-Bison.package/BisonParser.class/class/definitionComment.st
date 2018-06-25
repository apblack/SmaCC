generated
definitionComment
"%root File;
%prefix Bison;
%suffix Node;
%annotate_tokens;

%id <any> ;

%states default directive rule ignore prologue epilogue string ;
rule <any> : [{] ;
directive <leftCurlyBrace> : [{] ;
ignore <anyUnion> : [^\s{}]+ ;
epilogue <epilogue> : .+ ; 
<whitespace> : \s+ ;
<comment> : \/\/ [^\r\n]* 	| /\*([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+/ ;

string <string> : [^""] + ;

directive rule <equals> : = ;
directive <number> : \d+ ;
<dquote> : [""] ;
directive rule <id> : [a-zA-Z][a-zA-Z_0-9]+ ;
directive <type> : \< [^<>]+ \> ;
directive rule <keyword> : ' [^'] ' ;

prologue <cPrologue> : ([^%][^}] | [^%] \} | \% [^}]) + ;

File
	: Configuration 'config' * StartRule ""%%"" Rules 'productionRules' StartEpilogue ""%%"" <epilogue> 'epilogue' ? {{}} 
	;
	
Configuration
	: Prologue
	| StartDirective Directive 'dir'  {^ 'dir' }
	;
	
Prologue
	: StartPrologue ""%{"" <cPrologue> 'cPrologue' ? StartDirective ""%}"" {{Prologue}}
	;
	
Directive
	: Type
	| Union
	| ParseParam
	| LexParam
	| Locations
	| Prefix
	| Expect
	| PureParser
	| Token
	| LeftAssoc
	| RightAssoc
	| NonAssoc
	;
	
Type
	: ""%type"" <type> 'symboleType' Identifier 'symbol' + {{TypeDirective}}
	;
	
Union
	: ""%union"" StartIgnore <leftCurlyBrace> <anyUnion> 'cChunks' * StartDirective ""}"" {{UnionDirective}}
	;

ParseParam
	: ""%parse-param"" <leftCurlyBrace> Identifier 'param' + ""}"" {{ParseParamDirective}}
	;
	
LexParam
	: ""%lex-param"" <leftCurlyBrace> Identifier 'param' + ""}"" {{LexParamDirective}}
	;	

PureParser
	: ""%pure-parser"" {{PureParserDirective}}
	;
	
Expect
	: ""%expect"" <number> 'expected' {{ExpectDirective}}
	;
	
Prefix
	: ""%name-prefix"" <equals> StartString <dquote> <string> 'prefix' StartDefault <dquote> {{PrefixDirective}} 
	; 
	
Locations
	: ""%locations"" {{LocationsDirective}}
	;

Token
	: ""%token"" <type> 'type' ? Identifier 'symbol' + {{TokenDirective}}
	;

LeftAssoc
	: ""%left"" Term 'symbol' + {{LeftAssocDirective}}
	;

RightAssoc
	: ""%right"" Term 'symbol' + {{RightAssocDirective}}
	;
	
NonAssoc
	: ""%nonassoc"" Term 'symbol' + {{NonAssocDirective}}
	;

Rules
	: Rule 'rule' * {{}}
	;
	
Rule
	: Identifier 'production' "":"" RightHandSide 'rhs' "";"" {{}}
	;

RightHandSide
	: Alternate 'alternate' (""|"" Alternate 'alternate' ) * {{}} 
	;

Alternate
	: Terms 'terms' (""%prec"" Identifier 'symbol')? <any> 'cSemanticAction' ? {{}}
	;

Terms
	: Term 'term' * {{}}
	;
	
Term
	: <keyword> 'id' {{Keyword}}
	| Identifier 'id' {{Symbol}}
	;

Identifier
	: <id> 'idName' {{Identifier}}
	;
	
StartIgnore
	: {self state: #ignore. ^ nil} ;

StartDirective
	: {self state: #directive. ^ nil} ;
	
StartRule
	: {self state: #rule. ^ nil} ;

StartPrologue
	: {self state: #prologue. ^ nil} ;

StartEpilogue
	: {self state: #epilogue. ^ nil} ;

StartString
	: {self state: #string. ^ nil} ;
	
StartDefault
	: {self state: #default. ^ nil} ;"