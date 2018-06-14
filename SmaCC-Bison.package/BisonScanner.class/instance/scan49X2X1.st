generated
scan49X2X1
	self recordMatch: #(27).
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
							currentCharacter == $s
								ifTrue: [ self recordMatch: #(27).
									self step.
									currentCharacter == $e
										ifTrue: [ self recordMatch: #(27).
											self step.
											currentCharacter == $r
												ifTrue: [ self recordMatch: #(9 27).
													self step.
													currentCharacter ~~ $"
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
										or: [ (currentCharacter between: $# and: $d)
												or: [ currentCharacter >= $f ] ])
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
	^ self reportLastMatch