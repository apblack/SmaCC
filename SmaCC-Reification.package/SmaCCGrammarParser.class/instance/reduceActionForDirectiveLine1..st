generated-reduction actions
reduceActionForDirectiveLine1: nodes
	| result |
	result := GrammarDirectiveLineNode new.
	result directiveToken: (nodes at: 2).
	result directive: (nodes at: 3).
	result semicolonToken: (nodes at: 5).
	^ result