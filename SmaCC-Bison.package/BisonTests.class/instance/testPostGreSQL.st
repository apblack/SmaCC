tests
testPostGreSQL
	| ast |
	ast := BisonParser parse: self class postGreSqlGrammar.
	self assert: (ast isNotNil)