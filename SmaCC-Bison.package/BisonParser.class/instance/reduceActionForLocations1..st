generated-reduction actions
reduceActionForLocations1: nodes
	| result |
	result := BisonLocationsDirectiveNode new.
	result percentlocationsToken: (nodes at: 1).
	^ result