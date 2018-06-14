generated
rhs: aBisonRightHandSideNode
	self rhs notNil
		ifTrue: [ self rhs parent: nil ].
	rhs := aBisonRightHandSideNode.
	self rhs notNil
		ifTrue: [ self rhs parent: self ]