generated
scan12X1X1
	[ self recordMatch: #(23 26).
	self step.
	(currentCharacter == Character tab
		or: [ (currentCharacter between: Character pageUp and: Character newPage)
				or: [ currentCharacter == Character space
						or: [ '{}' includes: currentCharacter ] ] ])
		ifTrue: [ [ self recordMatch: #(26).
			self step.
			currentCharacter <= Character tab
				or: [ (currentCharacter between: Character pageUp and: Character newPage)
						or: [ currentCharacter >= (Character value: 14) ] ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter <= Character backspace
		or: [ (currentCharacter
				between: (Character value: 14)
				and: Character arrowDown)
				or: [ (currentCharacter between: $! and: $z)
						or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ]
		whileTrue.
	^ self reportLastMatch