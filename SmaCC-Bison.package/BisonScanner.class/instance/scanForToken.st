generated
scanForToken
	state == #rule
		ifTrue:
			[ ^ self scanForTokenX2 ].
	state == #prologue
		ifTrue: [ ^ self scan30 ].
	state == #ignore
		ifTrue: [ ^ self scan12 ].
	state == #string
		ifTrue: [ ^ self scan45 ].
	state == #directive
		ifTrue:
			[ ^ self scanForTokenX1 ].
	state == #default
		ifTrue:
			[ ^ self scanForTokenX3 ].
	state == #epilogue
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch