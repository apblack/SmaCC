generated
scan32
	self recordMatch: #(34).
	self step.
	currentCharacter == $%
		ifTrue: [ ^ self scan33 ].
	^ self scan31