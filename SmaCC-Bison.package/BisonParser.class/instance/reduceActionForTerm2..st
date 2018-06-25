generated-reduction actions
reduceActionForTerm2: nodes
	| result |
	result := BisonSymbolNode new.
	result id: (nodes at: 1).
	^ result