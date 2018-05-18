generated-reduction actions
reduceActionForRegexTerm8: nodes
	| result |
	result := GrammarKleeneStarRegexTermNode new.
	result term: (nodes at: 1).
	result timesToken: (nodes at: 2).
	^ result