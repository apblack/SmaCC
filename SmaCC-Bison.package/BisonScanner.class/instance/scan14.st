generated
scan14
	self recordMatch: #(23).
	self step.
	currentCharacter == $e
		ifTrue: [ ^ self scan15 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan16 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter
				between: (Character value: 14)
				and: Character arrowDown)
				or: [ (currentCharacter between: $! and: $d)
						or: [ (currentCharacter between: $f and: $n)
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