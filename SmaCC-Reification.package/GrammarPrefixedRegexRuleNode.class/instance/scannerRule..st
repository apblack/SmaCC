generated
scannerRule: aGrammarRegexRuleNode
	self scannerRule notNil
		ifTrue: [ self scannerRule parent: nil ].
	scannerRule := aGrammarRegexRuleNode.
	self scannerRule notNil
		ifTrue: [ self scannerRule parent: self ]