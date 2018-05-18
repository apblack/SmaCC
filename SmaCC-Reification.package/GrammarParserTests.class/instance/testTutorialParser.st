tests
testTutorialParser
	| ast |
	ast := self class parseGrammarFrom: FGLRTutorialParser.
	self assert: (ast isNotNil)