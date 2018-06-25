generated
scan49X2
	self recordMatch: #(27).
	self step.
	currentCharacter == $-
		ifTrue:
			[ ^ self scan49X2X1 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $,)
				or: [ currentCharacter >= $. ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch