generated-reduction actions
reduceActionForPureParser1: nodes
	| result |
	result := BisonPureParserDirectiveNode new.
	result percentpureMinusparserToken: (nodes at: 1).
	^ result