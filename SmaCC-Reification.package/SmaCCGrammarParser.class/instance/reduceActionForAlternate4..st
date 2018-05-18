generated-reduction actions
reduceActionForAlternate4: nodes
	| result |
	result := GrammarDefaultClassAlternateNode new.
	result rhsTerms: (nodes at: 1).
	result classLeftToken: (nodes at: 2).
	result classRightToken: (nodes at: 3).
	^ result