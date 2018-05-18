generated-reduction actions
reduceActionForRootClassLine1: nodes
	| result |
	result := GrammarRootClassLineNode new.
	result rootToken: (nodes at: 1).
	result root: (nodes at: 2).
	^ result