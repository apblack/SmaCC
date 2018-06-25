generated-reduction actions
reduceActionForNonAssoc1: nodes
	| result |
	result := BisonNonAssocDirectiveNode new.
	result percentnonassocToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result symbols.
	^ result