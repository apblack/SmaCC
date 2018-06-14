generated
scan28
	self recordMatch: #(23).
	self step.
	currentCharacter == $o
		ifTrue:
			[ ^ self scan28X1 ].
	currentCharacter == $y
		ifTrue:
			[ ^ self scan28X2 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter
				between: (Character value: 14)
				and: Character arrowDown)
				or: [ (currentCharacter between: $! and: $n)
						or: [ (currentCharacter between: $p and: $x)
								or:
									[ ('z|' includes: currentCharacter) or: [ currentCharacter >= $~ ] ] ] ] ])
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