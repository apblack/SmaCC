generated
suffix: aGrammarSymbolNode
	self suffix notNil
		ifTrue: [ self suffix parent: nil ].
	suffix := aGrammarSymbolNode.
	self suffix notNil
		ifTrue: [ self suffix parent: self ]