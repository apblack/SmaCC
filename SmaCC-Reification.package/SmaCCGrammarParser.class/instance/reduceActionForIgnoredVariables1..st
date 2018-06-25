generated-reduction actions
reduceActionForIgnoredVariables1: nodes
	| result |
	result := GrammarIgnoredVariablesNode new.
	result ignorevariablesToken: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result variableses.
	^ result