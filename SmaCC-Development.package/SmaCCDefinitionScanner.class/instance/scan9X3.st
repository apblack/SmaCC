generated
scan9X3
	self recordMatch: #(6).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan11 ].
	(currentCharacter <= $[ or: [ currentCharacter >= $^ ])
		ifTrue: [ ^ self scan10 ].
	^ self reportLastMatch