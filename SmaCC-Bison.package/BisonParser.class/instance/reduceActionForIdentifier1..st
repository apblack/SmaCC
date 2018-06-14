generated-reduction actions
reduceActionForIdentifier1: nodes
	| result |
	result := BisonIdentifierNode new.
	result idName: (nodes at: 1).
	^ result