generated
leftRegex: aGrammarFileNode
	self leftRegex notNil
		ifTrue: [ self leftRegex parent: nil ].
	leftRegex := aGrammarFileNode.
	self leftRegex notNil
		ifTrue: [ self leftRegex parent: self ]