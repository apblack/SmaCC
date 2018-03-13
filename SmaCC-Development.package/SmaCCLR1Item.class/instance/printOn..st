printing
printOn: aStream
	| i |
	aStream
		nextPutAll: '[ ';
		nextPutAll: self symbol printString;
		nextPutAll: ' :'.
	i := 1.
	rhs
		do:
			[ :each | 
			i = location
				ifTrue: [ aStream nextPutAll: ' • ' ].
			aStream
				space;
				nextPutAll: each printString.
			i := i + 1 ].
	location > rhs size
		ifTrue: [ aStream nextPutAll: ' • ' ].
	aStream nextPutAll: ' followed by '.
	followers printOn: aStream.
	aStream nextPutAll: ' ]'