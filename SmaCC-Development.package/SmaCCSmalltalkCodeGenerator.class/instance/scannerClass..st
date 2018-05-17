accessing
scannerClass: aClassOrString
	(aClassOrString isKindOf: Behavior)
		ifTrue: [ scannerClass := model classFor: aClassOrString ]
		ifFalse: [ scannerClass := model classNamed: aClassOrString asSymbol.
			scannerClass isNil
				ifTrue: [ | superClass |
					superClass := grammar isFGLR
						ifTrue: [ SmaCCFGLRScanner ]
						ifFalse: [ SmaCCScanner ].
					scannerClass := self defineClass: aClassOrString asSubclassOf: superClass ] ]