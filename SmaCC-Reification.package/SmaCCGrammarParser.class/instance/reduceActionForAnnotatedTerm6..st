generated-reduction actions
reduceActionForAnnotatedTerm6: nodes
	| result |
	result := GrammarNamedKleeneStarTermNode new.
	result term: (nodes at: 1).
	result variableName: (nodes at: 2).
	result timesToken: (nodes at: 3).
	^ result