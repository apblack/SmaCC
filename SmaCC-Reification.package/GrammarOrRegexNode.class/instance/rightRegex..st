generated
rightRegex: aGrammarFileNode
	self rightRegex notNil
		ifTrue: [ self rightRegex parent: nil ].
	rightRegex := aGrammarFileNode.
	self rightRegex notNil
		ifTrue: [ self rightRegex parent: self ]