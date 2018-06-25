generated
scan46
	self recordMatch: #(27).
	self step.
	currentCharacter == $%
		ifTrue:
			[ ^ self scan46X8 ].
	currentCharacter == $e
		ifTrue:
			[ ^ self scan46X2 ].
	currentCharacter == $l
		ifTrue: [ ^ self scan47 ].
	currentCharacter == $n
		ifTrue: [ ^ self scan48 ].
	currentCharacter == $p
		ifTrue: [ ^ self scan49 ].
	currentCharacter == $r
		ifTrue:
			[ ^ self scan46X3 ].
	currentCharacter == $t
		ifTrue:
			[ ^ self scan46X1 ].
	currentCharacter == $u
		ifTrue:
			[ ^ self scan46X5 ].
	currentCharacter == ${
		ifTrue:
			[ ^ self scan46X7 ].
	currentCharacter == $}
		ifTrue:
			[ ^ self scan46X6 ].
	^ self scan46X10