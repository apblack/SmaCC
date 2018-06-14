generated
scan29
	[ self recordMatch: #(23).
	self step.
	currentCharacter == $*
		ifTrue: [ [ self recordMatch: #(23).
			self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/
				ifTrue: [ self recordMatch: #(23 26).
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
			(currentCharacter isSeparator
				or: [ currentCharacter == Character pageUp
						or: [ '{}' includes: currentCharacter ] ])
				ifTrue: [ ^ self scan3 ].
			^ self scan29 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp
				or: [ '{}' includes: currentCharacter ] ])
		ifTrue: [ ^ self scan3 ].
	true ] whileTrue