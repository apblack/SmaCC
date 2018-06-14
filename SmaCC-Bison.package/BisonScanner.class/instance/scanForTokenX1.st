generated
scanForTokenX1
	self step.
	currentCharacter == $"
		ifTrue: [ ^ self recordAndReportMatch: #(30) ].
	currentCharacter == $%
		ifTrue: [ ^ self scan1 ].
	currentCharacter == $'
		ifTrue: [ ^ self scan4 ].
	currentCharacter == $/
		ifTrue: [ ^ self scan2 ].
	currentCharacter == $:
		ifTrue: [ ^ self recordAndReportMatch: #(15) ].
	^ self scanForTokenX1X4