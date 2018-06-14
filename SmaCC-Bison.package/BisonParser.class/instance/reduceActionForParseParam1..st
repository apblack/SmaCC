generated-reduction actions
reduceActionForParseParam1: nodes
	| result |
	result := BisonParseParamDirectiveNode new.
	result percentparseMinusparamToken: (nodes at: 1).
	result leftCurlyBraceToken: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result symbols.
	result rightBraceToken: (nodes at: 4).
	^ result