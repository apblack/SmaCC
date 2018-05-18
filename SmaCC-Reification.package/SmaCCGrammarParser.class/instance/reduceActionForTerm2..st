generated-reduction actions
reduceActionForTerm2: nodes
	| result |
	result := GrammarTokenNode new.
	result tokennameToken: (nodes at: 1).
	^ result