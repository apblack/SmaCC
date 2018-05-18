generated-reduction actions
reduceActionForRegexTerm11: nodes
	| result |
	result := GrammarRepeatRegexTermNode new.
	result term: (nodes at: 1).
	result repeatToken: (nodes at: 2).
	^ result