generated-reduction actions
reduceActionForGLR1: nodes
	| result |
	result := GrammarGLRNode new.
	result glrToken: (nodes at: 1).
	^ result