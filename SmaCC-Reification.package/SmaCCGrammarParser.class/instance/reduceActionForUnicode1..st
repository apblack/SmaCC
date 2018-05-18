generated-reduction actions
reduceActionForUnicode1: nodes
	| result |
	result := GrammarUnicodeNode new.
	result unicodeToken: (nodes at: 1).
	^ result