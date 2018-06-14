generated-reduction actions
reduceActionForTerms1: nodes
	| result |
	result := BisonTermsNode new.
	result addNodes: (nodes at: 1) to: result terms.
	^ result