generated
scan46X7
	self recordMatch: #(7 27).
	self step.
	currentCharacter ~~ $"
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch