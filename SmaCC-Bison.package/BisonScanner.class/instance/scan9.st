generated
scan9
	self recordMatch: #(24).
	self step.
	currentCharacter == $a
		ifTrue: [ self recordMatch: #(24).
			(self scanForString: 'me-prefix')
				ifTrue: [ self recordMatch: #(12 24).
					self step ].
			true
				ifTrue: [ [ self recordMatch: #(24).
					self step.
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $o
		ifTrue: [ self recordMatch: #(24).
			(self scanForString: 'nassoc')
				ifTrue: [ self recordMatch: #(14 24).
					self step ] ].
	true
		ifTrue: [ [ self recordMatch: #(24).
			self step.
			true ] whileTrue ].
	^ self reportLastMatch