generated
scan45X1
	self recordMatch: #(27).
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan50 ].
	currentCharacter == $/
		ifTrue: [ [ self recordMatch: #(26 27).
			self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan45X1X1 ].
			(currentCharacter == Character lf
				or: [ currentCharacter == Character cr ])
				ifTrue: [ [ self recordMatch: #(27).
					self step.
					currentCharacter ~~ $" ] whileTrue.
					^ self reportLastMatch ].
			true ] whileTrue ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $))
				or: [ (currentCharacter between: $+ and: $.)
						or: [ currentCharacter >= $0 ] ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch