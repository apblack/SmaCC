generated
directive: aGrammarFileNode
	self directive notNil
		ifTrue: [ self directive parent: nil ].
	directive := aGrammarFileNode.
	self directive notNil
		ifTrue: [ self directive parent: self ]