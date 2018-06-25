generated
scan45
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	currentCharacter == $%
		ifTrue: [ ^ self scan46 ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scan45X1 ].
	currentCharacter == $:
		ifTrue: [ self recordMatch: #(15 27).
			self step.
			currentCharacter ~~ $"
				ifTrue: [ [ self recordMatch: #(27).
					self step.
					currentCharacter ~~ $" ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $;
		ifTrue: [ self recordMatch: #(13 27).
			self step.
			currentCharacter ~~ $"
				ifTrue: [ [ self recordMatch: #(27).
					self step.
					currentCharacter ~~ $" ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $|
		ifTrue: [ self recordMatch: #(16 27).
			self step.
			currentCharacter ~~ $"
				ifTrue: [ [ self recordMatch: #(27).
					self step.
					currentCharacter ~~ $" ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $}
		ifTrue: [ self recordMatch: #(1 27).
			self step.
			currentCharacter ~~ $"
				ifTrue: [ [ self recordMatch: #(27).
					self step.
					currentCharacter ~~ $" ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scan45X2 ].
	true
		ifTrue: [ [ self recordMatch: #(27).
			self step.
			currentCharacter ~~ $" ] whileTrue ].
	^ self reportLastMatch