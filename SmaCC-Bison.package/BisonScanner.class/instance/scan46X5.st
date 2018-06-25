generated
scan46X5
	self recordMatch: #(27).
	self step.
	currentCharacter == $n
		ifTrue:
			[ ^ self scan46X4 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $m)
				or: [ currentCharacter >= $o ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch