generated
production: aBisonIdentifierNode
	self production notNil
		ifTrue: [ self production parent: nil ].
	production := aBisonIdentifierNode.
	self production notNil
		ifTrue: [ self production parent: self ]