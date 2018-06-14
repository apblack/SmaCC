generated
scanForTokenX2
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	currentCharacter == $%
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan4 ].
	^ self scanForTokenX2X2