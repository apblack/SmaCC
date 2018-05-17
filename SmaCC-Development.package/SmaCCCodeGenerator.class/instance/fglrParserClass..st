accessing
fglrParserClass: aClassOrString
	| name existingClass superclass |
	name := (aClassOrString isKindOf: Behavior)
		ifTrue: [ aClassOrString name ]
		ifFalse: [ aClassOrString ].
	superclass := SmaCCFGLRParser.
	existingClass := Smalltalk at: name asSymbol ifAbsent: [ nil ].
	(existingClass notNil and: [ existingClass superclass includesBehavior: superclass ])
		ifTrue: [ superclass := existingClass superclass ].
	(existingClass notNil and: [ defaultCategory isNil ])
		ifTrue: [ defaultCategory := existingClass category ].
	parserClass := self defineClass: name asSubclassOf: superclass