generated-reduction actions
reduceActionForAttributesLine1: nodes
	| result |
	result := GrammarAttributesLineNode new.
	result attributesToken: (nodes at: 1).
	result aClass: (nodes at: 2).
	result leftParenToken: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result ivarses.
	result rightParenToken: (nodes at: 5).
	^ result