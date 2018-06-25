generated
scan11
	[ self recordMatch: #(24).
	self step.
	currentCharacter == $*
		ifTrue: [ [ self recordMatch: #(24).
			self step.
			currentCharacter == $* ] whileTrue.
			currentCharacter == $/
				ifTrue: [ self recordMatch: #(24 26).
					self step.
					true
						ifTrue: [ [ self recordMatch: #(24).
							self step.
							true ] whileTrue ].
					^ self reportLastMatch ].
			^ self scan11 ].
	true ] whileTrue