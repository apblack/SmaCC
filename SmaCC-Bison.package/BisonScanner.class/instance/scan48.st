generated
scan48
	self recordMatch: #(27).
	self step.
	currentCharacter == $a
		ifTrue:
			[ ^ self scan48X1 ].
	currentCharacter == $o
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter == $n
				ifTrue: [ self recordMatch: #(27).
					self step.
					currentCharacter == $a
						ifTrue: [ self recordMatch: #(27).
							(self scanForString: 'ss')
								ifTrue: [ self recordMatch: #(27).
									self step.
									currentCharacter == $o
										ifTrue: [ self recordMatch: #(27).
											self step.
											currentCharacter == $c
												ifTrue: [ self recordMatch: #(14 27).
													self step.
													currentCharacter ~~ $"
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
										or: [ (currentCharacter between: $# and: $n)
												or: [ currentCharacter >= $p ] ])
										ifTrue: [ [ self recordMatch: #(27).
											self step.
											currentCharacter ~~ $" ] whileTrue ].
									^ self reportLastMatch ].
							(currentCharacter <= $!
								or: [ (currentCharacter between: $# and: $r)
										or: [ currentCharacter >= $t ] ])
								ifTrue: [ [ self recordMatch: #(27).
									self step.
									currentCharacter ~~ $" ] whileTrue ].
							^ self reportLastMatch ].
					(currentCharacter <= $!
						or: [ (currentCharacter between: $# and: $`)
								or: [ currentCharacter >= $b ] ])
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
		or: [ (currentCharacter between: $# and: $`)
				or: [ (currentCharacter between: $b and: $n)
						or: [ currentCharacter >= $p ] ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch