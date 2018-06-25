generated
scan47
	self recordMatch: #(27).
	self step.
	currentCharacter == $e
		ifTrue:
			[ ^ self scan47X1 ].
	currentCharacter == $o
		ifTrue:
			[ ^ self scan47X2 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $d)
				or: [ (currentCharacter between: $f and: $n)
						or: [ currentCharacter >= $p ] ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch