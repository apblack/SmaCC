generated-reduction actions
reduceActionForAnnotatedTerm8: nodes
	| result |
	result := GrammarNamedKleenePlusTermNode new.
	result term: (nodes at: 1).
	result variableName: (nodes at: 2).
	result plusToken: (nodes at: 3).
	^ result