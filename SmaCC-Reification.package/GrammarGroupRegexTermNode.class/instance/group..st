generated
group: aGrammarFileNode
	self group notNil
		ifTrue: [ self group parent: nil ].
	group := aGrammarFileNode.
	self group notNil
		ifTrue: [ self group parent: self ]