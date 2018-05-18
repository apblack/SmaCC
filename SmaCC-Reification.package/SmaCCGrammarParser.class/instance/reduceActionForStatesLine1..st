generated-reduction actions
reduceActionForStatesLine1: nodes
	| result |
	result := GrammarStatesLineNode new.
	result statesToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result scanneStateses.
	^ result