generated-reduction actions
reduceActionForFile1: nodes
	| result |
	result := BisonFileNode new.
	result addObjects: (nodes at: 1) to: result configs.
	result addToken: (nodes at: 3) to: result percentPercentTokens.
	result productionRules: (nodes at: 4).
	result addToken: (nodes at: 6) to: result percentPercentTokens.
	result epilogue: (nodes at: 7).
	^ result