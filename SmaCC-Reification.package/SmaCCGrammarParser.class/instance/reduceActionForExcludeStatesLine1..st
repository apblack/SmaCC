generated-reduction actions
reduceActionForExcludeStatesLine1: nodes
	| result |
	result := GrammarExcludeStatesLineNode new.
	result excludesToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result scannerStateses.
	^ result