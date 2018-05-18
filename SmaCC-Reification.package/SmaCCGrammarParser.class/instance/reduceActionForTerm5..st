generated-reduction actions
reduceActionForTerm5: nodes
	| result |
	result := GrammarGroupTermNode new.
	result leftParenToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result terms.
	result addTokens: ((nodes at: 3) at: 1) to: result orTokens.
	result addNodes: ((nodes at: 3) at: 2) to: result terms.
	result rightParenToken: (nodes at: 4).
	^ result