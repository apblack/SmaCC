generated
scan21X2
	[ self recordMatch: #(23).
	self step.
	currentCharacter <= Character backspace
		or: [ (currentCharacter
				between: (Character value: 14)
				and: Character arrowDown)
				or: [ (currentCharacter between: $! and: $z)
						or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ]
		whileTrue