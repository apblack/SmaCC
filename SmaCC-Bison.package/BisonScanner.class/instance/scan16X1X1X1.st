generated
scan16X1X1X1
	self recordMatch: #(23).
	self step.
	currentCharacter == $i
		ifTrue: [ self recordMatch: #(23).
			self step.
			currentCharacter == $o
				ifTrue: [ self recordMatch: #(23).
					self step.
					currentCharacter == $n
						ifTrue: [ self recordMatch: #(23).
							self step.
							currentCharacter == $s
								ifTrue: [ self recordMatch: #(20 23).
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
								or: [ (currentCharacter between: $! and: $m)
										or: [ (currentCharacter between: $o and: $z)
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
						or: [ (currentCharacter between: $! and: $n)
								or: [ (currentCharacter between: $p and: $z)
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
	^ self reportLastMatch