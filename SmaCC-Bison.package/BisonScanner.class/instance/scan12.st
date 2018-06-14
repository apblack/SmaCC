generated
scan12
	self step.
	currentCharacter == $"
		ifTrue:
			[ ^ self scan12X5 ].
	currentCharacter == $%
		ifTrue: [ ^ self scan13 ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scan12X1 ].
	currentCharacter == $:
		ifTrue:
			[ ^ self scan12X4 ].
	currentCharacter == $;
		ifTrue:
			[ ^ self scan12X3 ].
	currentCharacter == $|
		ifTrue:
			[ ^ self scan12X2 ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	^ self scan12X8