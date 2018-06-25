generated
lhs: aGrammarSymbolNode
	self lhs notNil
		ifTrue: [ self lhs parent: nil ].
	lhs := aGrammarSymbolNode.
	self lhs notNil
		ifTrue: [ self lhs parent: self ]