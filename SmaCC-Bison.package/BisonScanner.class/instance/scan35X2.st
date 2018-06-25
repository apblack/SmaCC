generated
scan35X2
	self recordMatch: #(34).
	self step.
	currentCharacter == $%
		ifTrue: [ ^ self scan33 ].
	currentCharacter == $x
		ifTrue: [ self step.
			currentCharacter == $p
				ifTrue: [ self recordMatch: #(34).
					self step.
					currentCharacter == $%
						ifTrue: [ ^ self scan33 ].
					currentCharacter == $e
						ifTrue: [ self step.
							currentCharacter == $c
								ifTrue: [ self recordMatch: #(34).
									self step.
									currentCharacter == $%
										ifTrue: [ ^ self scan33 ].
									currentCharacter == $t
										ifTrue: [ self recordMatch: #(11).
											self step.
											^ self scan32 ].
									^ self scan31 ].
							^ self scan32 ].
					^ self scan31 ].
			^ self scan32 ].
	^ self scan31