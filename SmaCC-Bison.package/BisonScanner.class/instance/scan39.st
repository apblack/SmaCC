generated
scan39
	self recordMatch: #(34).
	self step.
	currentCharacter == $%
		ifTrue: [ ^ self scan41 ].
	currentCharacter == $*
		ifTrue: [ ^ self scan42 ].
	^ self scan40