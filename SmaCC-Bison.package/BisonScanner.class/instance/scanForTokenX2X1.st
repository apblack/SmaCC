generated
scanForTokenX2X1
	[ self recordMatch: #(25).
	self step.
	currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ] ] whileTrue.
	^ self reportLastMatch