generated-reduction actions
reduceActionForAnnotatedTerm1: nodes
	| result |
	result := GrammarAnnotatedTermNode new.
	result term: (nodes at: 1).
	^ result