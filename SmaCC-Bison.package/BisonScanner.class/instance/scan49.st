generated
scan49
	self recordMatch: #(27).
	self step.
	currentCharacter == $a
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter == $r
				ifTrue:
					[ ^ self scan49X1 ].
			(currentCharacter <= $!
				or: [ (currentCharacter between: $# and: $q)
						or: [ currentCharacter >= $s ] ])
				ifTrue: [ [ self recordMatch: #(27).
					self step.
					currentCharacter ~~ $" ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $r
		ifTrue:
			[ ^ self scan49X4 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan49X3 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $`)
				or: [ (currentCharacter between: $b and: $q)
						or: [ (currentCharacter between: $s and: $t)
								or: [ currentCharacter >= $v ] ] ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch