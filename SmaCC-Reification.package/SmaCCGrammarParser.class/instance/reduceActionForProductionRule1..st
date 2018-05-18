generated-reduction actions
reduceActionForProductionRule1: nodes
	| result |
	result := GrammarProductionRuleNode new.
	result symbolName: (nodes at: 1).
	result productionToken: (nodes at: 3).
	result rhs: (nodes at: 4).
	result semicolonToken: (nodes at: 6).
	^ result