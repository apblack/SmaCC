generated-reduction actions
reduceActionForAnnotatedTerm7: nodes
	| result |
	result := GrammarKleenePlusTermNode new.
	result term: (nodes at: 1).
	result plusToken: (nodes at: 2).
	^ result