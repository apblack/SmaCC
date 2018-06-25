generated
scanForTokenX1X2
	[ self recordMatch: #(25).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch