generated-reduction actions
reduceActionForthrow_statement1: nodes
	| result |
	result := CSThrowStatementNode new.
	result throwToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result semicolonToken: (nodes at: 3).
	^ result