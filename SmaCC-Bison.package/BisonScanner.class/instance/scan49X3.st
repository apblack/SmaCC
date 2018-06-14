generated
scan49X3
	self recordMatch: #(27).
	self step.
	currentCharacter == $r
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter == $e
				ifTrue:
					[ ^ self scan49X2 ].
			(currentCharacter <= $!
				or: [ (currentCharacter between: $# and: $d)
						or: [ currentCharacter >= $f ] ])
				ifTrue: [ [ self recordMatch: #(27).
					self step.
					currentCharacter ~~ $" ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $q)
				or: [ currentCharacter >= $s ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch