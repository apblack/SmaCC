generated-reduction actions
reduceActionForPrefixedRegexRule1: nodes
	| result |
	result := GrammarPrefixedRegexRuleNode new.
	result scannerRule: (nodes at: 1).
	^ result