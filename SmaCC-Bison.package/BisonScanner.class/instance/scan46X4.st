generated
scan46X4
	self recordMatch: #(27).
	self step.
	currentCharacter == $i
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter == $o
				ifTrue: [ self recordMatch: #(27).
					self step.
					currentCharacter == $n
						ifTrue: [ self recordMatch: #(3 27).
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
				or: [ (currentCharacter between: $# and: $n)
						or: [ currentCharacter >= $p ] ])
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