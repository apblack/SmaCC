generated-reduction actions
reduceActionForTerm6: nodes
	| result |
	result := GrammarOptionalGroupTermNode new.
	result leftBracketToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result terms.
	result addTokens: ((nodes at: 3) at: 1) to: result orTokens.
	result addNodes: ((nodes at: 3) at: 2) to: result terms.
	result rightBracketToken: (nodes at: 4).
	^ result