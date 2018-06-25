generated-reduction actions
reduceActionForRegexRule1: nodes
	| result |
	result := GrammarRegexRuleNode new.
	result token: (nodes at: 2).
	result productionToken: (nodes at: 3).
	result regex: (nodes at: 4).
	result semicolonToken: (nodes at: 6).
	^ result