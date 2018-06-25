generated
scan48X1X1X1X1
	self recordMatch: #(27).
	self step.
	currentCharacter == $r
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter == $e
				ifTrue: [ self recordMatch: #(27).
					self step.
					currentCharacter == $f
						ifTrue: [ self recordMatch: #(27).
							self step.
							currentCharacter == $i
								ifTrue: [ self recordMatch: #(27).
									self step.
									currentCharacter == $x
										ifTrue: [ self recordMatch: #(12 27).
											self step.
											currentCharacter ~~ $"
												ifTrue: [ [ self recordMatch: #(27).
													self step.
													currentCharacter ~~ $" ] whileTrue ].
											^ self reportLastMatch ].
									(currentCharacter <= $!
										or: [ (currentCharacter between: $# and: $w)
												or: [ currentCharacter >= $y ] ])
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
							^ self reportLastMatch ].
					(currentCharacter <= $!
						or: [ (currentCharacter between: $# and: $e)
								or: [ currentCharacter >= $g ] ])
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
		or: [ (currentCharacter between: $# and: $q)
				or: [ currentCharacter >= $s ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch