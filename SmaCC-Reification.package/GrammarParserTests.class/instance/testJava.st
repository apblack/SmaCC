tests
testJava
	| ast |
	ast := self class parseGrammarFrom: JavaParser.
	self assert: (ast isNotNil)