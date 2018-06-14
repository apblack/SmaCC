generated
scanForTokenX3
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	currentCharacter == $%
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue: [ [ self recordMatch: #(25).
			self step.
			currentCharacter isSeparator
				or: [ currentCharacter == Character pageUp ] ] whileTrue ].
	^ self reportLastMatch