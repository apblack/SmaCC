generated-reduction actions
reduceActionForLeftAssoc1: nodes
	| result |
	result := BisonLeftAssocDirectiveNode new.
	result percentleftToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result symbols.
	^ result