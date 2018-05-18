generated-reduction actions
reduceActionForSuperclassLine1: nodes
	| result |
	result := GrammarSuperclassLineNode new.
	result hierarchyToken: (nodes at: 1).
	result superclass: (nodes at: 2).
	result leftParenToken: (nodes at: 3).
	result addTokens: (nodes at: 4) to: result classeses.
	result rightParenToken: (nodes at: 5).
	^ result