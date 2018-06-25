generated
aClass: aGrammarSymbolNode
	self aClass notNil
		ifTrue: [ self aClass parent: nil ].
	aClass := aGrammarSymbolNode.
	self aClass notNil
		ifTrue: [ self aClass parent: self ]