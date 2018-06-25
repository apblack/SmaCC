generated
scan35X1
	self recordMatch: #(34).
	self step.
	currentCharacter == $%
		ifTrue: [ ^ self scan33 ].
	currentCharacter == $o
		ifTrue: [ self step.
			currentCharacter == $k
				ifTrue: [ self recordMatch: #(34).
					self step.
					currentCharacter == $%
						ifTrue: [ ^ self scan33 ].
					currentCharacter == $e
						ifTrue: [ self step.
							currentCharacter == $n
								ifTrue: [ self recordMatch: #(17 34).
									self step.
									currentCharacter == $%
										ifTrue: [ ^ self scan33 ].
									^ self scan31 ].
							^ self scan32 ].
					^ self scan31 ].
			^ self scan32 ].
	currentCharacter == $y
		ifTrue: [ self step.
			currentCharacter == $p
				ifTrue: [ self recordMatch: #(34).
					self step.
					currentCharacter == $%
						ifTrue: [ ^ self scan33 ].
					currentCharacter == $e
						ifTrue: [ self recordMatch: #(4).
							self step.
							^ self scan32 ].
					^ self scan31 ].
			^ self scan32 ].
	^ self scan31