generated-reduction actions
reduceActionForAnnotatedTerm5: nodes
	| result |
	result := GrammarKleeneStarTermNode new.
	result term: (nodes at: 1).
	result timesToken: (nodes at: 2).
	^ result