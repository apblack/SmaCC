generated-reduction actions
reduceActionForRegexTerm5: nodes
	| result |
	result := GrammarCharacterBlockNode new.
	result characterblockToken: (nodes at: 1).
	^ result