generated
scan40
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan43 ].
	^ self scan39