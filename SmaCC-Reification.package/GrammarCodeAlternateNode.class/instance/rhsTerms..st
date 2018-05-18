generated
rhsTerms: aGrammarTermsNode
	self rhsTerms notNil
		ifTrue: [ self rhsTerms parent: nil ].
	rhsTerms := aGrammarTermsNode.
	self rhsTerms notNil
		ifTrue: [ self rhsTerms parent: self ]