generated-reduction actions
reduceActionForRegex2: nodes
	| result |
	result := GrammarOrRegexNode new.
	result leftRegex: (nodes at: 1).
	result orToken: (nodes at: 2).
	result rightRegex: (nodes at: 3).
	^ result