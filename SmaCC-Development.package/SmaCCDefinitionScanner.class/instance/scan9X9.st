generated
scan9X9
	self recordMatch: #(40).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan6 ].
	^ self reportLastMatch