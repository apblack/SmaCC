generated-reduction actions
reduceActionForExpect1: nodes
	| result |
	result := BisonExpectDirectiveNode new.
	result percentexpectToken: (nodes at: 1).
	result expected: (nodes at: 2).
	^ result