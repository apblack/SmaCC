tests
testProloguePostGreSQL
	| ast |
	ast := BisonParser parse: self class postGreSqlPrologue.
	self assert: (ast isNotNil)