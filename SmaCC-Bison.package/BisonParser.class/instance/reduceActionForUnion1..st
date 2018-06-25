generated-reduction actions
reduceActionForUnion1: nodes
	| result |
	result := BisonUnionDirectiveNode new.
	result percentunionToken: (nodes at: 1).
	result leftCurlyBraceToken: (nodes at: 3).
	result addTokens: (nodes at: 4) to: result cChunkses.
	result rightBraceToken: (nodes at: 6).
	^ result