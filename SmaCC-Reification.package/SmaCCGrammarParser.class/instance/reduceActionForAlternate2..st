generated-reduction actions
reduceActionForAlternate2: nodes
	| result |
	result := GrammarCodeAlternateNode new.
	result rhsTerms: (nodes at: 1).
	result code: (nodes at: 2).
	^ result