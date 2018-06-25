generated
scan35X3
	self recordMatch: #(34).
	self step.
	currentCharacter == $%
		ifTrue: [ ^ self scan33 ].
	currentCharacter == $i
		ifTrue: [ self step.
			currentCharacter == $g
				ifTrue: [ self recordMatch: #(34).
					self step.
					currentCharacter == $%
						ifTrue: [ ^ self scan33 ].
					currentCharacter == $h
						ifTrue: [ self step.
							currentCharacter == $t
								ifTrue: [ self recordMatch: #(19 34).
									self step.
									currentCharacter == $%
										ifTrue: [ ^ self scan33 ].
									^ self scan31 ].
							^ self scan32 ].
					^ self scan31 ].
			^ self scan32 ].
	^ self scan31