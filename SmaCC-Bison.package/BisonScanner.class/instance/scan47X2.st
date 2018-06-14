generated
scan47X2
	self recordMatch: #(27).
	self step.
	currentCharacter == $c
		ifTrue:
			[ ^ self scan47X2X1 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $b)
				or: [ currentCharacter >= $d ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch