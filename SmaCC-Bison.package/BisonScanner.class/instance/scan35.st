generated
scan35
	self step.
	currentCharacter == $%
		ifTrue: [ self recordMatch: #(6 34).
			self step.
			currentCharacter == $%
				ifTrue: [ ^ self scan33 ].
			^ self scan31 ].
	currentCharacter == $e
		ifTrue: [ ^ self scan35X2 ].
	currentCharacter == $l
		ifTrue: [ ^ self scan36 ].
	currentCharacter == $n
		ifTrue: [ ^ self scan37 ].
	currentCharacter == $p
		ifTrue: [ ^ self scan38 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan35X3 ].
	currentCharacter == $t
		ifTrue: [ ^ self scan35X1 ].
	currentCharacter == $u
		ifTrue: [ self recordMatch: #(34).
			self step.
			currentCharacter == $%
				ifTrue: [ ^ self scan33 ].
			currentCharacter == $n
				ifTrue: [ ^ self scan35X4 ].
			^ self scan31 ].
	currentCharacter == ${
		ifTrue: [ self recordMatch: #(7 34).
			self step.
			currentCharacter == $%
				ifTrue: [ ^ self scan33 ].
			^ self scan31 ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	^ self scan32