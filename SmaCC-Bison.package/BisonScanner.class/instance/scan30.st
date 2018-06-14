generated
scan30
	self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(30).
			self step.
			^ self scan32 ].
	currentCharacter == $%
		ifTrue: [ ^ self scan35 ].
	currentCharacter == $/
		ifTrue: [ self step.
			currentCharacter == $*
				ifTrue: [ ^ self scan39 ].
			currentCharacter == $/
				ifTrue: [ ^ self scan44 ].
			^ self scan32 ].
	currentCharacter == $:
		ifTrue: [ self recordMatch: #(15).
			self step.
			^ self scan32 ].
	currentCharacter == $;
		ifTrue: [ self recordMatch: #(13).
			self step.
			^ self scan32 ].
	currentCharacter == $|
		ifTrue: [ self recordMatch: #(16).
			self step.
			^ self scan32 ].
	currentCharacter == $}
		ifTrue: [ self recordMatch: #(1).
			self step.
			^ self scan32 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue: [ ^ self scan34 ].
	^ self scan31