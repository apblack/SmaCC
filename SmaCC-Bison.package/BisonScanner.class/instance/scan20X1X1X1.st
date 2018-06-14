generated
scan20X1X1X1
	self recordMatch: #(23).
	self step.
	currentCharacter == $e
		ifTrue: [ self recordMatch: #(23).
			self step.
			currentCharacter == $f
				ifTrue: [ self recordMatch: #(23).
					self step.
					currentCharacter == $i
						ifTrue: [ self recordMatch: #(23).
							self step.
							currentCharacter == $x
								ifTrue: [ self recordMatch: #(12 23).
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
										or: [ (currentCharacter between: $! and: $w)
												or: [ (currentCharacter between: $y and: $z)
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
								or: [ (currentCharacter between: $! and: $h)
										or: [ (currentCharacter between: $j and: $z)
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
						or: [ (currentCharacter between: $! and: $e)
								or: [ (currentCharacter between: $g and: $z)
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
	^ self reportLastMatch