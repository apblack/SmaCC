parsing
parseGrammarFrom: aParserClass
	^ SmaCCGrammarParser parse: (aParserClass class commentsAt: #definitionComment) first.