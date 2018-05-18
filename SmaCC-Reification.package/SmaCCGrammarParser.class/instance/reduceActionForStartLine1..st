generated-reduction actions
reduceActionForStartLine1: nodes
	| result |
	result := GrammarStartLineNode new.
	result startToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result startingSymbolses.
	^ result