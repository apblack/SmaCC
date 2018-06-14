generated
scan44
	[ [ self recordMatch: #(26 34).
	self step.
	currentCharacter == $% ]
		whileTrue: [ self recordMatch: #(26).
			self step.
			currentCharacter == $}
				ifTrue: [ [ self recordMatch: #(26).
					self step.
					currentCharacter <= Character tab
						or: [ (currentCharacter between: Character pageUp and: Character newPage)
								or: [ currentCharacter >= (Character value: 14) ] ] ]
						whileTrue.
					^ self reportLastMatch ].
			(currentCharacter == Character lf
				or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan32 ] ].
	(currentCharacter == Character lf
		or: [ currentCharacter == Character cr ])
		ifTrue: [ ^ self scan31 ].
	true ]
		whileTrue: [ self recordMatch: #(26).
			self step.
			(currentCharacter == Character lf
				or: [ currentCharacter == Character cr ])
				ifTrue: [ ^ self scan32 ] ].
	^ self reportLastMatch