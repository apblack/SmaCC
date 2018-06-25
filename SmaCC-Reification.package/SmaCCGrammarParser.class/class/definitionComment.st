generated
definitionComment
"%states default scanner directives parser;
%root File;
%prefix Grammar;
%suffix Node;
%annotate_tokens;

directives <states>
	: states 
	;
directives <excludes> 
	: excludes 
	;
directives <root> 
	: root 
	;
directives <hierarchy> 
	: hierarchy 
	;
directives <attributes>
	: attributes
	;
directives <prefix> 
	: prefix 
	;
directives <suffix> 
	: suffix 
	;
directives <left> 
	: left 
	;
directives <right> 
	: right 
	;
directives <nonassoc> 
	: nonassoc 
	;
directives <id> 
	: id 
	;
directives <start> 
	: start 
	;
directives <glr>
	: glr
	;
directives <sglr>
	: sglr
	;
directives <ignorecase>
	: ignorecase
	;
directives <ignorevariables>
	: ignore_variables
	;
directives <annotate_tokens>
	: annotate_tokens
	;
directives <unicode>
	: unicode
	;
	
<name> 
	: (<isLetter> | _) (<isLetter> | _ | <isDigit>)*
	;
<directive> 
	: \%
	;
<whitespace>
	: \s+ 
	;
<tokenname>
	: \< <name> \>
	;
<symbolname>
	: <name>
	 ;
<keyword>
	: (\"" [^\""]+ \"") + 
	;
<comment>
	: (\# [^\r\n]*) 
	| (\/\* [^\*]* \*+ ([^\/\*] [^\*]* \*+)* \/)
	;
<code>
	: \{ 
	;
<variablename>
	: \' <name> \' 
	;
<production>
	: \: (\: \=)? 
	;
<directive>
	: \% 
	;
<semicolon>
	: \; 
	;
	
scanner <backslashcharacter>
	: \\ [^cx] 
	| \\ c [A-Z] 
	| \\ x [0-9A-Fa-f]{1,4}
	;
scanner <characterblock>
	: \[ ([^\]\\] | <backslashcharacter> )+ \] 
	;
scanner <repeat>
	: \{ [0-9]* \, [0-9]* \}
	;
scanner <character>
	: [^\ \t\v\\\r\n\{\(\[\.\%\:\<]
	; 
scanner <anycharacter>
	: \.
	;
	
parser <optionalLeft>
	: \[
	;
parser <optionalRight>
	: \] 
	;
parser <classLeft> 
	: \{\{ 
	;
parser <classRight> 
	: \}\} 
	;

%id <code> <keyword> <symbolname> <tokenname> <variablename> <semicolon>
	<directive> <production> <classLeft> <classRight>;
%left ""|"";
%left ""("" <character> <backslashcharacter> <characterblock> <anycharacter> <tokenname> <symbolname> <directive>;
%left ""*"" ""+"" ""?"" <repeat> ;

File
	: Rule 'rule' + {{}}
	;
	
Rule 
	: ProductionRule
	| DirectiveLine
	| PrefixedRegexRule
	;
	
# Directives
DirectiveLine 
	: StartDirective <directive> Directive 'directive' EndDirective <semicolon> {{}}
	;
	
Directive 
	: ExcludeStatesLine 
	| StatesLine
	| RootClassLine
	| SuperclassLine
	| AttributesLine
	| PrefixLine
	| SuffixLine
	| LeftLine 
	| RightLine 
	| NonAssociativeLine
	| IdMethodLine
	| StartLine 
	| GLR
	| SGLR
	| Unicode
	| IgnoreCase
	| IgnoredVariables
	| AnnotateTokens
	;
	
StartDirective 
	: 		{self state: #directives. ^ nil}
	;
	
EndDirective 
	: 		{self state: #default. ^ nil}
	;
	
StatesLine 
	: <states> Symbol 'scanneStates' * {{}}
	;

ExcludeStatesLine 
	: <excludes> Symbol 'scannerStates' * {{}} 
	;

RootClassLine
	: <root> Symbol 'root' {{}}
	;
	
SuperclassLine
	: <hierarchy> Symbol 'superclass' ""("" Symbol 'classes' *  "")"" {{}}
	;
	
AttributesLine
	: <attributes> Symbol 'aClass' ""(""  Symbol 'ivars' * "")"" {{}}
	;

PrefixLine
	: <prefix> Symbol 'prefix' {{}}
	;
	
SuffixLine
	: <suffix> Symbol 'suffix' {{}}
	;
	
LeftLine
	: <left> Term 'leftTokens' + {{}}
	;
	
RightLine
	: <right> Term 'rightTokens' + {{}}
	;
	
NonAssociativeLine
	: <nonassoc> Term 'noassocTokens' + {{}}
	;
		
IdMethodLine
	: <id> <tokenname> 'idTokens' + {{}}
	;
	
StartLine
	: <start> Symbol 'startingSymbols' + {{}}
	;

GLR
	: <glr> {{}}
	;
	
SGLR
	: <sglr> {{}}
	;
	
Unicode
	: <unicode> {{}}
	;
	
IgnoredVariables
	: EndDirective <ignorevariables> (Symbol 'variables')+ {{}}
	;

IgnoreCase
	: <ignorecase> {{}}
	;
	
AnnotateTokens
	: <annotate_tokens> {{}}
	;
	
# Scanner
PrefixedRegexRule
	: RegexRule 'scannerRule' {{}}
	| Symbol 'state' PrefixedRegexRule 'prefixedRule' {{}}
	;

RegexRule 
	: StartRegex <tokenname> 'token' <production> Regex 'regex' EndRegex <semicolon> {{}}
	;
	
StartRegex
	: 		{self state: #scanner. ^ nil}
	;
	
EndRegex
	: 		{self state: #default. ^ nil}
	;
	
Symbol 
	: <symbolname> 'symbolName' {{}}
	;
	
Regex
	: RegexTerm
	| Regex 'leftRegex' ""|"" Regex 'rightRegex' {{OrRegex}}
	| Regex 'leftRegex' RegexTerm 'rightRegex' {{SequenceRegex}}
	;
	
RegexTerm
	: <character> {{Character}}
	| <anycharacter> {{AnyCharacter}}
	| <backslashcharacter> {{BackslashCharacter}}
	| ""("" Regex 'group' "")"" {{GroupRegexTerm}}
	| <characterblock> {{CharacterBlock}}
	| <tokenname> {{Token}}
	| <symbolname> {{Symbol}}
	| RegexTerm 'term' ""*"" {{KleeneStarRegexTerm}}
	| RegexTerm 'term' ""+"" {{KleenePlusRegexTerm}}
	| RegexTerm 'term' ""?"" {{OptionalRegexTerm}}
	| RegexTerm 'term' <repeat>  {{RepeatRegexTerm}}
	;

# Parser 
ProductionRule
	: Symbol 'lhs' StartProduction <production> RightHandSide 'rhs' EndProduction <semicolon> {{}}
	;
	
StartProduction
	: 		{self state: #parser. ^ nil}
	;
	
EndProduction
	: 		{self state: #default. ^ nil}
	;
	
RightHandSide
	: Alternate 'alternate' (""|"" Alternate 'alternate') * {{}}
	;
	
Alternate
	: Terms 'rhsTerms' {{}}
	| Terms 'rhsTerms' <code> 'code' {{CodeAlternate}}
	| Terms 'rhsTerms' <classLeft> <symbolname> 'className' <classRight> {{ClassAlternate}}
	| Terms 'rhsTerms' <classLeft> <classRight> {{DefaultClassAlternate}}
	;

Terms
	: AnnotatedTerm 'term' * {{}}
	;

AnnotatedTerm
	: Term 'term' {{}}	
	| Term 'term' <variablename> 'variableName' {{NamedTerm}}
	| Term 'term' ""?"" {{OptionalTerm}}
	| Term 'term' <variablename> 'variableName' ""?"" {{NamedOptionalTerm}}
	| Term 'term' ""*"" {{KleeneStarTerm}}
	| Term 'term' <variablename> 'variableName' ""*"" {{NamedKleeneStarTerm}}
	| Term 'term' ""+"" {{KleenePlusTerm}}
	| Term 'term' <variablename> 'variableName' ""+"" {{NamedKleenePlusTerm}}
	;

Term
	: <keyword> {{Keyword}}
	| <tokenname>  {{Token}}
	| <symbolname>  {{NonTerminal}}
	| ""error"" {{Error}}
	| ""("" AnnotatedTerm 'term' + (""|"" AnnotatedTerm 'term' + )* "")"" {{GroupTerm}}
	| ""["" AnnotatedTerm 'term' + (""|"" AnnotatedTerm 'term' + )* ""]"" {{OptionalGroupTerm}}
	;"