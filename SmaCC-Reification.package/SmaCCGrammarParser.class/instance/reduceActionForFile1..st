generated-reduction actions
reduceActionForFile1: nodes
	| result |
	result := GrammarFileNode new.
	result addNodes: (nodes at: 1) to: result rules.
	^ result