generated
scan33
	self step.
	currentCharacter ~~ $}
		ifTrue: [ ^ self scan32 ].
	^ self reportLastMatch