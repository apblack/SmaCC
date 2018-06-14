generated
scan13
	self recordMatch: #(23).
	self step.
	currentCharacter == $%
		ifTrue:
			[ ^ self scan13X5 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scan13X1 ].
	currentCharacter == $l
		ifTrue: [ ^ self scan14 ].
	currentCharacter == $n
		ifTrue: [ ^ self scan17 ].
	currentCharacter == $p
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $r
		ifTrue:
			[ ^ self scan13X2 ].
	currentCharacter == $t
		ifTrue: [ ^ self scan28 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan13X4 ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	^ self scan13X7