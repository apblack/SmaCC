accessing
parserClass: aClassOrString
	grammar isGLR
		ifTrue: [ self codeGenerator glrParserClass: aClassOrString ]
		ifFalse: [ grammar isFGLR
				ifTrue: [ self codeGenerator fglrParserClass: aClassOrString ]
				ifFalse: [ self codeGenerator parserClass: aClassOrString ] ]