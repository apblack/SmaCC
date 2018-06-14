generated
scan43
	self recordMatch: #(34).
	self step.
	currentCharacter == $%
		ifTrue: [ ^ self scan41 ].
	currentCharacter == $*
		ifTrue: [ ^ self scan42 ].
	currentCharacter == $/
		ifTrue: [ self recordMatch: #(26).
			self step.
			^ self scan32 ].
	^ self scan40