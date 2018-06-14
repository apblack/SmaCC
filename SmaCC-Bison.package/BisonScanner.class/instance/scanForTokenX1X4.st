generated
scanForTokenX1X4
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(13) ].
	currentCharacter == $<
		ifTrue:
			[ ^ self scanForTokenX1X1 ].
	currentCharacter == $=
		ifTrue: [ ^ self recordAndReportMatch: #(28) ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(22) ].
	currentCharacter == $|
		ifTrue: [ ^ self recordAndReportMatch: #(16) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	(currentCharacter between: $0 and: $9)
		ifTrue:
			[ ^ self scanForTokenX1X3 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp ])
		ifTrue:
			[ ^ self scanForTokenX1X2 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ ^ self scan5 ].
	^ self reportLastMatch