generated
scan35X4
	self step.
	currentCharacter == $i
		ifTrue: [ self recordMatch: #(34).
			self step.
			currentCharacter == $%
				ifTrue: [ ^ self scan33 ].
			currentCharacter == $o
				ifTrue: [ self step.
					currentCharacter == $n
						ifTrue: [ self recordMatch: #(3 34).
							self step.
							currentCharacter == $%
								ifTrue: [ ^ self scan33 ].
							^ self scan31 ].
					^ self scan32 ].
			^ self scan31 ].
	^ self scan32