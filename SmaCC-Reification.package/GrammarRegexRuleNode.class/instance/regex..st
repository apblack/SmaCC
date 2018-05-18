generated
regex: aGrammarFileNode
	self regex notNil
		ifTrue: [ self regex parent: nil ].
	regex := aGrammarFileNode.
	self regex notNil
		ifTrue: [ self regex parent: self ]