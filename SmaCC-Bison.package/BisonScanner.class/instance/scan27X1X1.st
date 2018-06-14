generated
scan27X1X1
	self recordMatch: #(23).
	self step.
	currentCharacter == $a
		ifTrue: [ self recordMatch: #(23).
			self step.
			currentCharacter == $r
				ifTrue: [ self recordMatch: #(23).
					self step.
					currentCharacter == $s
						ifTrue: [ self recordMatch: #(23).
							self step.
							currentCharacter == $e
								ifTrue: [ self recordMatch: #(23).
									self step.
									currentCharacter == $r
										ifTrue: [ self recordMatch: #(9 23).
											self step.
											(currentCharacter <= Character backspace
												or: [ (currentCharacter
														between: (Character value: 14)
														and: Character arrowDown)
														or: [ (currentCharacter between: $! and: $z)
																or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ])
												ifTrue: [ [ self recordMatch: #(23).
													self step.
													currentCharacter <= Character backspace
														or: [ (currentCharacter
																between: (Character value: 14)
																and: Character arrowDown)
																or: [ (currentCharacter between: $! and: $z)
																		or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ]
														whileTrue ].
											^ self reportLastMatch ].
									(currentCharacter <= Character backspace
										or: [ (currentCharacter
												between: (Character value: 14)
												and: Character arrowDown)
												or: [ (currentCharacter between: $! and: $q)
														or: [ (currentCharacter between: $s and: $z)
																or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ])
										ifTrue: [ [ self recordMatch: #(23).
											self step.
											currentCharacter <= Character backspace
												or: [ (currentCharacter
														between: (Character value: 14)
														and: Character arrowDown)
														or: [ (currentCharacter between: $! and: $z)
																or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ]
												whileTrue ].
									^ self reportLastMatch ].
							(currentCharacter <= Character backspace
								or: [ (currentCharacter
										between: (Character value: 14)
										and: Character arrowDown)
										or: [ (currentCharacter between: $! and: $d)
												or: [ (currentCharacter between: $f and: $z)
														or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ])
								ifTrue: [ [ self recordMatch: #(23).
									self step.
									currentCharacter <= Character backspace
										or: [ (currentCharacter
												between: (Character value: 14)
												and: Character arrowDown)
												or: [ (currentCharacter between: $! and: $z)
														or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ]
										whileTrue ].
							^ self reportLastMatch ].
					(currentCharacter <= Character backspace
						or: [ (currentCharacter
								between: (Character value: 14)
								and: Character arrowDown)
								or: [ (currentCharacter between: $! and: $r)
										or: [ (currentCharacter between: $t and: $z)
												or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ])
						ifTrue: [ [ self recordMatch: #(23).
							self step.
							currentCharacter <= Character backspace
								or: [ (currentCharacter
										between: (Character value: 14)
										and: Character arrowDown)
										or: [ (currentCharacter between: $! and: $z)
												or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ]
								whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter <= Character backspace
				or: [ (currentCharacter
						between: (Character value: 14)
						and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $q)
								or: [ (currentCharacter between: $s and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ])
				ifTrue: [ [ self recordMatch: #(23).
					self step.
					currentCharacter <= Character backspace
						or: [ (currentCharacter
								between: (Character value: 14)
								and: Character arrowDown)
								or: [ (currentCharacter between: $! and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ]
						whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter
				between: (Character value: 14)
				and: Character arrowDown)
				or: [ (currentCharacter between: $! and: $`)
						or: [ (currentCharacter between: $b and: $z)
								or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(23).
			self step.
			currentCharacter <= Character backspace
				or: [ (currentCharacter
						between: (Character value: 14)
						and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $z)
								or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch