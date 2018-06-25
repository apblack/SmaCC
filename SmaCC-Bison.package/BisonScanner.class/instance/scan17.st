generated
scan17
	self recordMatch: #(23).
	self step.
	currentCharacter == $a
		ifTrue: [ ^ self scan18 ].
	currentCharacter == $o
		ifTrue:
			[ ^ self scan17X1 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter
				between: (Character value: 14)
				and: Character arrowDown)
				or: [ (currentCharacter between: $! and: $`)
						or: [ (currentCharacter between: $b and: $n)
								or: [ (currentCharacter between: $p and: $z)
										or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ])
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