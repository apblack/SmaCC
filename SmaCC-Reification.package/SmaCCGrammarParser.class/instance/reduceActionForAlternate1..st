generated-reduction actions
reduceActionForAlternate1: nodes
	| result |
	result := GrammarAlternateNode new.
	result rhsTerms: (nodes at: 1).
	^ result