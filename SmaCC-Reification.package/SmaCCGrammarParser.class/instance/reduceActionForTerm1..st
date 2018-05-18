generated-reduction actions
reduceActionForTerm1: nodes
	| result |
	result := GrammarKeywordNode new.
	result keywordToken: (nodes at: 1).
	^ result