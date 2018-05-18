generated-reduction actions
reduceActionForRegexTerm4: nodes
	| result |
	result := GrammarGroupRegexTermNode new.
	result leftParenToken: (nodes at: 1).
	result group: (nodes at: 2).
	result rightParenToken: (nodes at: 3).
	^ result