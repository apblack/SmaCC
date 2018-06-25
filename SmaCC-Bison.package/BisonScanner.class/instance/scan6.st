generated
scan6
	self step.
	currentCharacter == $"
		ifTrue: [ self recordMatch: #(24 30).
			self step.
			true
				ifTrue: [ [ self recordMatch: #(24).
					self step.
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $%
		ifTrue: [ ^ self scan7 ].
	currentCharacter == $/
		ifTrue: [ self recordMatch: #(24).
			self step.
			currentCharacter == $*
				ifTrue: [ ^ self scan11 ].
			currentCharacter == $/
				ifTrue: [ [ self recordMatch: #(24 26).
					self step.
					(currentCharacter == Character lf
						or: [ currentCharacter == Character cr ])
						ifTrue: [ [ self recordMatch: #(24).
							self step.
							true ] whileTrue ].
					true ] whileTrue ].
			true
				ifTrue: [ [ self recordMatch: #(24).
					self step.
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $:
		ifTrue: [ self recordMatch: #(15 24).
			self step.
			true
				ifTrue: [ [ self recordMatch: #(24).
					self step.
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $;
		ifTrue: [ self recordMatch: #(13 24).
			self step.
			true
				ifTrue: [ [ self recordMatch: #(24).
					self step.
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $|
		ifTrue: [ self recordMatch: #(16 24).
			self step.
			true
				ifTrue: [ [ self recordMatch: #(24).
					self step.
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $}
		ifTrue: [ self recordMatch: #(1 24).
			self step.
			true
				ifTrue: [ [ self recordMatch: #(24).
					self step.
					true ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue: [ [ self recordMatch: #(24 25).
			self step.
			currentCharacter isSeparator
				or: [ currentCharacter == Character pageUp ] ] whileTrue ].
	true
		ifTrue: [ [ self recordMatch: #(24).
			self step.
			true ] whileTrue ].
	^ self reportLastMatch