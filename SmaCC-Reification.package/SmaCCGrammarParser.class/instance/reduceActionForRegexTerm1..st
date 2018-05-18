generated-reduction actions
reduceActionForRegexTerm1: nodes
	| result |
	result := GrammarCharacterNode new.
	result characterToken: (nodes at: 1).
	^ result