generated-reduction actions
reduceActionForPrefixedRegexRule2: nodes
	| result |
	result := GrammarPrefixedRegexRuleNode new.
	result state: (nodes at: 1).
	result prefixedRule: (nodes at: 2).
	^ result