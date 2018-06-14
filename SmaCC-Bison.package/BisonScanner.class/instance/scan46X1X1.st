generated
scan46X1X1
	self recordMatch: #(27).
	self step.
	currentCharacter == $k
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter == $e
				ifTrue: [ self recordMatch: #(27).
					self step.
					currentCharacter == $n
						ifTrue: [ self recordMatch: #(17 27).
							self step.
							currentCharacter ~~ $"
								ifTrue: [ [ self recordMatch: #(27).
									self step.
									currentCharacter ~~ $" ] whileTrue ].
							^ self reportLastMatch ].
					(currentCharacter <= $!
						or: [ (currentCharacter between: $# and: $m)
								or: [ currentCharacter >= $o ] ])
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
		or: [ (currentCharacter between: $# and: $j)
				or: [ currentCharacter >= $l ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch