generated
scan48X1X1
	self recordMatch: #(27).
	self step.
	currentCharacter == $-
		ifTrue:
			[ ^ self scan48X1X1X1 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $,)
				or: [ currentCharacter >= $. ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch