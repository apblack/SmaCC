generated-reduction actions
reduceActionForPrefixLine1: nodes
	| result |
	result := GrammarPrefixLineNode new.
	result prefixToken: (nodes at: 1).
	result prefix: (nodes at: 2).
	^ result