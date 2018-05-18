tests
testSmalltalk
	| ast |
	ast := self class parseGrammarFrom: StParser.
	self assert: (ast isNotNil)