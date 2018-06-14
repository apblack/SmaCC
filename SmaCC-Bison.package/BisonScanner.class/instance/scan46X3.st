generated
scan46X3
	self recordMatch: #(27).
	self step.
	currentCharacter == $i
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter == $g
				ifTrue: [ self recordMatch: #(27).
					self step.
					currentCharacter == $h
						ifTrue: [ self recordMatch: #(27).
							self step.
							currentCharacter == $t
								ifTrue: [ self recordMatch: #(19 27).
									self step.
									currentCharacter ~~ $"
										ifTrue: [ [ self recordMatch: #(27).
											self step.
											currentCharacter ~~ $" ] whileTrue ].
									^ self reportLastMatch ].
							(currentCharacter <= $!
								or: [ (currentCharacter between: $# and: $s)
										or: [ currentCharacter >= $u ] ])
								ifTrue: [ [ self recordMatch: #(27).
									self step.
									currentCharacter ~~ $" ] whileTrue ].
							^ self reportLastMatch ].
					(currentCharacter <= $!
						or: [ (currentCharacter between: $# and: $g)
								or: [ currentCharacter >= $i ] ])
						ifTrue: [ [ self recordMatch: #(27).
							self step.
							currentCharacter ~~ $" ] whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter <= $!
				or: [ (currentCharacter between: $# and: $f)
						or: [ currentCharacter >= $h ] ])
				ifTrue: [ [ self recordMatch: #(27).
					self step.
					currentCharacter ~~ $" ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $h)
				or: [ currentCharacter >= $j ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch