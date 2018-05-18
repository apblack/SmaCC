generated-reduction actions
reduceActionForLeftLine1: nodes
	| result |
	result := GrammarLeftLineNode new.
	result leftToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result leftTokenses.
	^ result