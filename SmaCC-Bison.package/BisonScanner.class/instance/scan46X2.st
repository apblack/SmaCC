generated
scan46X2
	self recordMatch: #(27).
	self step.
	currentCharacter == $x
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter == $p
				ifTrue: [ self recordMatch: #(27).
					self step.
					currentCharacter == $e
						ifTrue: [ self recordMatch: #(27).
							self step.
							currentCharacter == $c
								ifTrue: [ self recordMatch: #(27).
									self step.
									currentCharacter == $t
										ifTrue: [ self recordMatch: #(11 27).
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
								or: [ (currentCharacter between: $# and: $b)
										or: [ currentCharacter >= $d ] ])
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
		or: [ (currentCharacter between: $# and: $w)
				or: [ currentCharacter >= $y ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch