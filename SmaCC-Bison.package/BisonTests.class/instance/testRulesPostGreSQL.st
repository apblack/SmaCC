tests
testRulesPostGreSQL
	| ast |
	ast := BisonParser parse: self class postGreSqlRules.
	self assert: (ast isNotNil)