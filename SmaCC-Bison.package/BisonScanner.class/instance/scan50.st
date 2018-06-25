generated
scan50
	[ self recordMatch: #(27).
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self scan3 ].
	currentCharacter == $*
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter == $"
				ifTrue: [ ^ self scan3 ].
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/
				ifTrue: [ self recordMatch: #(26 27).
					self step.
					currentCharacter ~~ $"
						ifTrue: [ [ self recordMatch: #(27).
							self step.
							currentCharacter ~~ $" ] whileTrue ].
					^ self reportLastMatch ].
			^ self scan50 ].
	true ] whileTrue