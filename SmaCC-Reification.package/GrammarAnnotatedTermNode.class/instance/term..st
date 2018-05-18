generated
term: aGrammarFileNode
	self term notNil
		ifTrue: [ self term parent: nil ].
	term := aGrammarFileNode.
	self term notNil
		ifTrue: [ self term parent: self ]