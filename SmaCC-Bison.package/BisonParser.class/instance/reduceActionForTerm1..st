generated-reduction actions
reduceActionForTerm1: nodes
	| result |
	result := BisonKeywordNode new.
	result id: (nodes at: 1).
	^ result