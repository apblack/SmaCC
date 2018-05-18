generated-reduction actions
reduceActionForAlternate3: nodes
	| result |
	result := GrammarClassAlternateNode new.
	result rhsTerms: (nodes at: 1).
	result classLeftToken: (nodes at: 2).
	result _className: (nodes at: 3).
	result classRightToken: (nodes at: 4).
	^ result