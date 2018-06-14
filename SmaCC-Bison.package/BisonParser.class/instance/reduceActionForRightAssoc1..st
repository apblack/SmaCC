generated-reduction actions
reduceActionForRightAssoc1: nodes
	| result |
	result := BisonRightAssocDirectiveNode new.
	result percentrightToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result symbols.
	^ result