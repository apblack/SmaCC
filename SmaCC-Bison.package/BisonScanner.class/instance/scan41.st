generated
scan41
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan43 ].
	currentCharacter == $}
		ifTrue: [ ^ self scan3 ].
	^ self scan39