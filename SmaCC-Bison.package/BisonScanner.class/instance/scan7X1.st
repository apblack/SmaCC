generated
scan7X1
	self recordMatch: #(24).
	self step.
	currentCharacter == $o
		ifTrue: [ self recordMatch: #(24).
			(self scanForString: 'ken')
				ifTrue: [ self recordMatch: #(17 24).
					self step ].
			true
				ifTrue: [ [ self recordMatch: #(24).
					self step.
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $y
		ifTrue: [ self recordMatch: #(24).
			(self scanForString: 'pe')
				ifTrue: [ self recordMatch: #(4 24).
					self step ] ].
	true
		ifTrue: [ [ self recordMatch: #(24).
			self step.
			true ] whileTrue ].
	^ self reportLastMatch