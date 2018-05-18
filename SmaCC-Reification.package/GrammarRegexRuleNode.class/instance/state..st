generated
state: aGrammarSymbolNode
	self state notNil
		ifTrue: [ self state parent: nil ].
	state := aGrammarSymbolNode.
	self state notNil
		ifTrue: [ self state parent: self ]