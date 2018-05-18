generated-reduction actions
reduceActionForRightLine1: nodes
	| result |
	result := GrammarRightLineNode new.
	result rightToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result leftTokenses.
	^ result