generated-reduction actions
reduceActionForRegexRule1: nodes
	| result |
	result := GrammarRegexRuleNode new.
	result state: (nodes at: 1).
	result token: (nodes at: 3).
	result productionToken: (nodes at: 4).
	result regex: (nodes at: 5).
	result semicolonToken: (nodes at: 7).
	^ result