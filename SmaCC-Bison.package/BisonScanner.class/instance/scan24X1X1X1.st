generated
scan24X1X1X1
	self recordMatch: #(23).
	self step.
	currentCharacter == $r
		ifTrue: [ self recordMatch: #(23).
			self step.
			currentCharacter == $a
				ifTrue: [ self recordMatch: #(23).
					self step.
					currentCharacter == $m
						ifTrue: [ self recordMatch: #(2 23).
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
								or: [ (currentCharacter between: $! and: $l)
										or: [ (currentCharacter between: $n and: $z)
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
	^ self reportLastMatch