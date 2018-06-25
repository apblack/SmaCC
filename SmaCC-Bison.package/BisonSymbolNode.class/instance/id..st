generated
id: aBisonIdentifierNode
	self id notNil
		ifTrue: [ self id parent: nil ].
	id := aBisonIdentifierNode.
	self id notNil
		ifTrue: [ self id parent: self ]