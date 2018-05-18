generated-reduction actions
reduceActionForAnnotatedTerm2: nodes
	| result |
	result := GrammarNamedTermNode new.
	result term: (nodes at: 1).
	result variableName: (nodes at: 2).
	^ result