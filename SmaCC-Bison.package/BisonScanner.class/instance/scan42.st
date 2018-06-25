generated
scan42
	self step.
	currentCharacter == $*
		ifTrue: [ ^ self scan43 ].
	currentCharacter == $/
		ifTrue: [ self recordMatch: #(26 34).
			self step.
			currentCharacter == $%
				ifTrue: [ ^ self scan33 ].
			^ self scan31 ].
	^ self scan39