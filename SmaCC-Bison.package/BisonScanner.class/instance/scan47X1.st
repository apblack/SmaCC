generated
scan47X1
	self recordMatch: #(27).
	self step.
	currentCharacter == $f
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter == $t
				ifTrue: [ self recordMatch: #(18 27).
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
	currentCharacter == $x
		ifTrue:
			[ ^ self scan47X1X1 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $e)
				or: [ (currentCharacter between: $g and: $w)
						or: [ currentCharacter >= $y ] ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch