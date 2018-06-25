generated
scan21X3
	self step.
	currentCharacter == $a
		ifTrue: [ ^ self scan22 ].
	currentCharacter == $r
		ifTrue:
			[ ^ self scan21X1 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan25 ].
	(currentCharacter <= Character backspace
		or: [ (currentCharacter
				between: (Character value: 14)
				and: Character arrowDown)
				or: [ (currentCharacter between: $! and: $`)
						or: [ (currentCharacter between: $b and: $q)
								or: [ (currentCharacter between: $s and: $t)
										or: [ (currentCharacter between: $v and: $z)
												or: [ currentCharacter == $| or: [ currentCharacter >= $~ ] ] ] ] ] ] ])
		ifTrue:
			[ self scan21X2 ].
	^ self reportLastMatch