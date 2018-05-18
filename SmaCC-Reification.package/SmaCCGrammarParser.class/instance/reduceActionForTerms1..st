generated-reduction actions
reduceActionForTerms1: nodes
	| result |
	result := GrammarTermsNode new.
	result addNodes: (nodes at: 1) to: result terms.
	^ result