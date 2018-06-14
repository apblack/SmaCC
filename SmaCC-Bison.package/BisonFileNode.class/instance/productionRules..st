generated
productionRules: aBisonRulesNode
	self productionRules notNil
		ifTrue: [ self productionRules parent: nil ].
	productionRules := aBisonRulesNode.
	self productionRules notNil
		ifTrue: [ self productionRules parent: self ]