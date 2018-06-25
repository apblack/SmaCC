generated
scan46X1
	self recordMatch: #(27).
	self step.
	currentCharacter == $o
		ifTrue:
			[ ^ self scan46X1X1 ].
	currentCharacter == $y
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter == $p
				ifTrue: [ self recordMatch: #(27).
					self step.
					currentCharacter == $e
						ifTrue: [ self recordMatch: #(4 27).
							self step.
							currentCharacter ~~ $"
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
					^ self reportLastMatch ].
			(currentCharacter <= $!
				or: [ (currentCharacter between: $# and: $o)
						or: [ currentCharacter >= $q ] ])
				ifTrue: [ [ self recordMatch: #(27).
					self step.
					currentCharacter ~~ $" ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $n)
				or: [ (currentCharacter between: $p and: $x)
						or: [ currentCharacter >= $z ] ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch