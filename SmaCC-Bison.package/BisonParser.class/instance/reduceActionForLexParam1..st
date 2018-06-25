generated-reduction actions
reduceActionForLexParam1: nodes
	| result |
	result := BisonLexParamDirectiveNode new.
	result percentlexMinusparamToken: (nodes at: 1).
	result leftCurlyBraceToken: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result symbols.
	result rightBraceToken: (nodes at: 4).
	^ result