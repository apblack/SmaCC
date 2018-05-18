tests
testSwift
	| ast |
	ast := self class parseGrammarFrom: SwiftParser.
	self assert: (ast isNotNil)