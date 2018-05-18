tests
testC
	| ast |
	ast := self class parseGrammarFrom: FRCParser.
	self assert: (ast isNotNil)