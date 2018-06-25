generated
prefix: aGrammarSymbolNode
	self prefix notNil
		ifTrue: [ self prefix parent: nil ].
	prefix := aGrammarSymbolNode.
	self prefix notNil
		ifTrue: [ self prefix parent: self ]