generated
scan46X6
	self recordMatch: #(10 27).
	self step.
	currentCharacter ~~ $"
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch