generated
superclass: aGrammarSymbolNode
	self superclass notNil
		ifTrue: [ self superclass parent: nil ].
	superclass := aGrammarSymbolNode.
	self superclass notNil
		ifTrue: [ self superclass parent: self ]