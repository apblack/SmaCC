generated
symbol: aBisonIdentifierNode
	self symbol notNil
		ifTrue: [ self symbol parent: nil ].
	symbol := aBisonIdentifierNode.
	self symbol notNil
		ifTrue: [ self symbol parent: self ]