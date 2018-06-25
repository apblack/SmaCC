generated
scan47X1X1
	self recordMatch: #(27).
	self step.
	currentCharacter == $-
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter == $p
				ifTrue: [ self recordMatch: #(27).
					self step.
					currentCharacter == $a
						ifTrue: [ self recordMatch: #(27).
							self step.
							currentCharacter == $r
								ifTrue: [ self recordMatch: #(27).
									self step.
									currentCharacter == $a
										ifTrue: [ self recordMatch: #(27).
											self step.
											currentCharacter == $m
												ifTrue: [ self recordMatch: #(8 27).
													self step.
													currentCharacter ~~ $"
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
											^ self reportLastMatch ].
									(currentCharacter <= $!
										or: [ (currentCharacter between: $# and: $`)
												or: [ currentCharacter >= $b ] ])
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
							^ self reportLastMatch ].
					(currentCharacter <= $!
						or: [ (currentCharacter between: $# and: $`)
								or: [ currentCharacter >= $b ] ])
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
		or: [ (currentCharacter between: $# and: $,)
				or: [ currentCharacter >= $. ] ])
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch