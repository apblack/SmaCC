generated-reduction actions
reduceActionForNonAssociativeLine1: nodes
	| result |
	result := GrammarNonAssociativeLineNode new.
	result nonassocToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result leftTokenses.
	^ result