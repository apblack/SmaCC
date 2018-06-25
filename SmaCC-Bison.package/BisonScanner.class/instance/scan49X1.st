generated
scan49X1
	self recordMatch: #(27).
	self step.
	currentCharacter == $s
		ifTrue:
			[ ^ self scan49X1X1 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $r)
				or: [ currentCharacter >= $t ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch