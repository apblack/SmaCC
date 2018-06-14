generated
scan46X10
	(currentCharacter isSafeForHTTP
		or: [ currentCharacter isSpecial
				or: [ currentCharacter isSeparator
						or: [ currentCharacter isArrow
								or: [ currentCharacter <= Character backspace
										or: [ currentCharacter == Character pageUp
												or: [ (currentCharacter
														between: (Character value: 14)
														and: Character escape)
														or: [ (currentCharacter between: $# and: $$)
																or: [ (currentCharacter between: $' and: $))
																		or: [ (currentCharacter between: $: and: $;)
																				or: [ currentCharacter == $[
																						or: [ (currentCharacter between: $] and: $^)
																								or: [ currentCharacter == $`
																										or: [ currentCharacter >= (Character value: 127) ] ] ] ] ] ] ] ] ] ] ] ] ])
		ifTrue:
			[ self scan46X9 ].
	^ self reportLastMatch