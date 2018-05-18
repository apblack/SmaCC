generated-reduction actions
reduceActionForSuffixLine1: nodes
	| result |
	result := GrammarSuffixLineNode new.
	result suffixToken: (nodes at: 1).
	result suffix: (nodes at: 2).
	^ result