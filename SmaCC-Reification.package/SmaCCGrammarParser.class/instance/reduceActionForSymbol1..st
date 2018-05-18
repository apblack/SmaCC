generated-reduction actions
reduceActionForSymbol1: nodes
	| result |
	result := GrammarSymbolNode new.
	result symbolName: (nodes at: 1).
	^ result