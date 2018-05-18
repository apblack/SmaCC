generated-reduction actions
reduceActionForRegex3: nodes
	| result |
	result := GrammarSequenceRegexNode new.
	result leftRegex: (nodes at: 1).
	result rightRegex: (nodes at: 2).
	^ result