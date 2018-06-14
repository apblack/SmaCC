generated
terms: aBisonTermsNode
	self terms notNil
		ifTrue: [ self terms parent: nil ].
	terms := aBisonTermsNode.
	self terms notNil
		ifTrue: [ self terms parent: self ]