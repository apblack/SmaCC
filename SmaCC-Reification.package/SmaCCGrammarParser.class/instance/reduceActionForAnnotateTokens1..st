generated-reduction actions
reduceActionForAnnotateTokens1: nodes
	| result |
	result := GrammarAnnotateTokensNode new.
	result annotate_tokensToken: (nodes at: 1).
	^ result