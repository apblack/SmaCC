generated-reduction actions
reduceActionForRule1: nodes
	| result |
	result := BisonRuleNode new.
	result production: (nodes at: 1).
	result colonToken: (nodes at: 2).
	result rhs: (nodes at: 3).
	result semicolonToken: (nodes at: 4).
	^ result