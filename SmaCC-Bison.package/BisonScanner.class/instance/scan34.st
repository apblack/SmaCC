generated
scan34
	self recordMatch: #(25).
	self step.
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue: [ self recordMatch: #(25 34).
			self step.
			currentCharacter == $%
				ifTrue: [ ^ self scan33 ].
			(currentCharacter isSeparator
				or: [ currentCharacter == Character pageUp ])
				ifTrue: [ ^ self scan34 ].
			^ self scan31 ].
	^ self scan32