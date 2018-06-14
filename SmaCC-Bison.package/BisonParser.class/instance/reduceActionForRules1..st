generated-reduction actions
reduceActionForRules1: nodes
	| result |
	result := BisonRulesNode new.
	result addNodes: (nodes at: 1) to: result rules.
	^ result