generated
scan49X1X1
	self recordMatch: #(27).
	self step.
	currentCharacter == $e
		ifTrue:
			[ ^ self scan49X1X1X1 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $d)
				or: [ currentCharacter >= $f ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch