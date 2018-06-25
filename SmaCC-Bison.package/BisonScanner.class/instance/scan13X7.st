generated
scan13X7
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	(currentCharacter isSafeForHTTP
		or: [ currentCharacter isSpecial
				or: [ currentCharacter isArrow
						or: [ currentCharacter <= Character backspace
								or: [ (currentCharacter
										between: (Character value: 14)
										and: Character escape)
										or: [ (currentCharacter between: $" and: $$)
												or: [ (currentCharacter between: $' and: $))
														or: [ (currentCharacter between: $: and: $;)
																or: [ currentCharacter == $[
																		or: [ (currentCharacter between: $] and: $^)
																				or: [ currentCharacter == $`
																						or: [ currentCharacter >= (Character value: 127) ] ] ] ] ] ] ] ] ] ] ])
		ifTrue:
			[ self scan13X6 ].
	^ self reportLastMatch