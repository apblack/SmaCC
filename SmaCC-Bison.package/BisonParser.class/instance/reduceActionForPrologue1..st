generated-reduction actions
reduceActionForPrologue1: nodes
	| result |
	result := BisonPrologueNode new.
	result percentLeftBraceToken: (nodes at: 2).
	result cPrologue: (nodes at: 3).
	result percentRightBraceToken: (nodes at: 5).
	^ result