generated-reduction actions
reduceActionForAnnotatedTerm3: nodes
	| result |
	result := GrammarOptionalTermNode new.
	result term: (nodes at: 1).
	result questionMarkToken: (nodes at: 2).
	^ result