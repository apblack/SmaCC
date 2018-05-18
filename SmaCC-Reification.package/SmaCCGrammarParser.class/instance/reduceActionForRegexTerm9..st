generated-reduction actions
reduceActionForRegexTerm9: nodes
	| result |
	result := GrammarKleenePlusRegexTermNode new.
	result term: (nodes at: 1).
	result plusToken: (nodes at: 2).
	^ result