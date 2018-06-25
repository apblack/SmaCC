generated
root: aGrammarSymbolNode
	self root notNil
		ifTrue: [ self root parent: nil ].
	root := aGrammarSymbolNode.
	self root notNil
		ifTrue: [ self root parent: self ]