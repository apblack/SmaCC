generated-reduction actions
reduceActionForToken1: nodes
	| result |
	result := BisonTokenDirectiveNode new.
	result percenttokenToken: (nodes at: 1).
	result type: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result symbols.
	^ result