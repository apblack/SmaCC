generated-reduction actions
reduceActionForSGLR1: nodes
	| result |
	result := GrammarSGLRNode new.
	result sglrToken: (nodes at: 1).
	^ result