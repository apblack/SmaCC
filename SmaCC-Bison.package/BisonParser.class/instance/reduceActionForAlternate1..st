generated-reduction actions
reduceActionForAlternate1: nodes
	| result |
	result := BisonAlternateNode new.
	result terms: (nodes at: 1).
	result percentprecToken: ((nodes at: 2) at: 1).
	result symbol: ((nodes at: 2) at: 2).
	result cSemanticAction: (nodes at: 3).
	^ result