generated-reduction actions
reduceActionForRegexTerm10: nodes
	| result |
	result := GrammarOptionalRegexTermNode new.
	result term: (nodes at: 1).
	result questionMarkToken: (nodes at: 2).
	^ result