generated
prefixedRule: aGrammarPrefixedRegexRuleNode
	self prefixedRule notNil
		ifTrue: [ self prefixedRule parent: nil ].
	prefixedRule := aGrammarPrefixedRegexRuleNode.
	self prefixedRule notNil
		ifTrue: [ self prefixedRule parent: self ]