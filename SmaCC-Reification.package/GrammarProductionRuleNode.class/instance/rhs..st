generated
rhs: aGrammarRightHandSideNode
	self rhs notNil
		ifTrue: [ self rhs parent: nil ].
	rhs := aGrammarRightHandSideNode.
	self rhs notNil
		ifTrue: [ self rhs parent: self ]