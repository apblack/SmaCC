generated
scan48X1
	self recordMatch: #(27).
	self step.
	currentCharacter == $m
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter == $e
				ifTrue:
					[ ^ self scan48X1X1 ].
			(currentCharacter <= $!
				or: [ (currentCharacter between: $# and: $d)
						or: [ currentCharacter >= $f ] ])
				ifTrue: [ [ self recordMatch: #(27).
					self step.
					currentCharacter ~~ $" ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $l)
				or: [ currentCharacter >= $n ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch