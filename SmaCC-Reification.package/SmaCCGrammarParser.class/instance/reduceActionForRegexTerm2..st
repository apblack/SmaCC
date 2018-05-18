generated-reduction actions
reduceActionForRegexTerm2: nodes
	| result |
	result := GrammarAnyCharacterNode new.
	result anycharacterToken: (nodes at: 1).
	^ result