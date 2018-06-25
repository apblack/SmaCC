generated-reduction actions
reduceActionForRightHandSide1: nodes
	| result |
	result := BisonRightHandSideNode new.
	result addNode: (nodes at: 1) to: result alternates.
	result addTokens: ((nodes at: 2) at: 1) to: result orTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result alternates.
	^ result