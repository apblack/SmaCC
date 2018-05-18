tests
testCSharp
	| ast |
	ast := self class parseGrammarFrom: CSharpParser.
	self assert: (ast isNotNil)