tests
testJavascript
	| ast |
	ast := self class parseGrammarFrom: JSParser.
	self assert: (ast isNotNil)