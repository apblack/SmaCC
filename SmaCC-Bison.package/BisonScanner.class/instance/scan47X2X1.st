generated
scan47X2X1
	self recordMatch: #(27).
	self step.
	currentCharacter == $a
		ifTrue: [ self recordMatch: #(27).
			self step.
			currentCharacter == $t
				ifTrue: [ self recordMatch: #(27).
					self step.
					currentCharacter == $i
						ifTrue: [ self recordMatch: #(27).
							self step.
							currentCharacter == $o
								ifTrue: [ self recordMatch: #(27).
									self step.
									currentCharacter == $n
										ifTrue: [ self recordMatch: #(27).
											self step.
											currentCharacter == $s
												ifTrue: [ self recordMatch: #(20 27).
													self step.
													currentCharacter ~~ $"
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
					^ self reportLastMatch ].
			(currentCharacter <= $!
				or: [ (currentCharacter between: $# and: $s)
						or: [ currentCharacter >= $u ] ])
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
	^ self reportLastMatch