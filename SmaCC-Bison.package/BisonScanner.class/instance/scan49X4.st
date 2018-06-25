generated
scan49X4
	self recordMatch: #(27).
	self step.
	currentCharacter == $e
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter == $c
				ifTrue: [ self recordMatch: #(5 27).
					self step.
					currentCharacter ~~ $"
						ifTrue: [ [ self recordMatch: #(27).
							self step.
							currentCharacter ~~ $" ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter <= $!
				or: [ (currentCharacter between: $# and: $b)
						or: [ currentCharacter >= $d ] ])
				ifTrue: [ [ self recordMatch: #(27).
					self step.
					currentCharacter ~~ $" ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $d)
				or: [ currentCharacter >= $f ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch