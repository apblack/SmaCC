generated-reduction actions
reduceActionForAnnotatedTerm4: nodes
	| result |
	result := GrammarNamedOptionalTermNode new.
	result term: (nodes at: 1).
	result variableName: (nodes at: 2).
	result questionMarkToken: (nodes at: 3).
	^ result