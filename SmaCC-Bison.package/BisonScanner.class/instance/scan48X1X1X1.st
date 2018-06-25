generated
scan48X1X1X1
	self recordMatch: #(27).
	self step.
	currentCharacter == $p
		ifTrue:
			[ ^ self scan48X1X1X1X1 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $o)
				or: [ currentCharacter >= $q ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch