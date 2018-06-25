generated-reduction actions
reduceActionForPrefix1: nodes
	| result |
	result := BisonPrefixDirectiveNode new.
	result percentnameMinusprefixToken: (nodes at: 1).
	result equalsToken: (nodes at: 2).
	result addToken: (nodes at: 4) to: result dquoteTokens.
	result prefix: (nodes at: 5).
	result addToken: (nodes at: 7) to: result dquoteTokens.
	^ result