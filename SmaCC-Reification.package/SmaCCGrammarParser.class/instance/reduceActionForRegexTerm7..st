generated-reduction actions
reduceActionForRegexTerm7: nodes
	| result |
	result := GrammarSymbolNode new.
	result symbolnameToken: (nodes at: 1).
	^ result