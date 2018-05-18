generated-reduction actions
reduceActionForIgnoreCase1: nodes
	| result |
	result := GrammarIgnoreCaseNode new.
	result ignorecaseToken: (nodes at: 1).
	^ result