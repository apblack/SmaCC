generated-reduction actions
reduceActionForIdMethodLine1: nodes
	| result |
	result := GrammarIdMethodLineNode new.
	result idToken: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result idTokenses.
	^ result