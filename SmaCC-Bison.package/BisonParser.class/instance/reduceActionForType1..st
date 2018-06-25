generated-reduction actions
reduceActionForType1: nodes
	| result |
	result := BisonTypeDirectiveNode new.
	result percenttypeToken: (nodes at: 1).
	result symboleType: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result symbols.
	^ result