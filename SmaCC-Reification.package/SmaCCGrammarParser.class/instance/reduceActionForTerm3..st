generated-reduction actions
reduceActionForTerm3: nodes
	| result |
	result := GrammarNonTerminalNode new.
	result symbolnameToken: (nodes at: 1).
	^ result