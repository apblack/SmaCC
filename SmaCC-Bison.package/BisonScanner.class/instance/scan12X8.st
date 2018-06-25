generated
scan12X8
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scan12X7 ].
	(currentCharacter isSafeForHTTP
		or: [ currentCharacter isSpecial
				or: [ currentCharacter isArrow
						or: [ currentCharacter <= Character backspace
								or: [ (currentCharacter
										between: (Character value: 14)
										and: Character escape)
										or: [ (currentCharacter between: $# and: $$)
												or: [ (currentCharacter between: $' and: $))
														or: [ currentCharacter == $[
																or: [ (currentCharacter between: $] and: $^)
																		or: [ currentCharacter == $`
																				or: [ currentCharacter >= (Character value: 127) ] ] ] ] ] ] ] ] ] ])
		ifTrue:
			[ self scan12X6 ].
	^ self reportLastMatch