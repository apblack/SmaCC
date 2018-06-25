generated
scan46X8
	self recordMatch: #(6 27).
	self step.
	currentCharacter ~~ $"
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch