generated-reduction actions
reduceActionForTerm4: nodes
	| result |
	result := GrammarErrorNode new.
	result errorToken: (nodes at: 1).
	^ result