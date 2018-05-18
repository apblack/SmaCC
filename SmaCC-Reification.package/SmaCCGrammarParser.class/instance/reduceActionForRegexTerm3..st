generated-reduction actions
reduceActionForRegexTerm3: nodes
	| result |
	result := GrammarBackslashCharacterNode new.
	result backslashcharacterToken: (nodes at: 1).
	^ result