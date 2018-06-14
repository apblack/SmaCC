generated
scan7X2
	self recordMatch: #(24).
	(self scanForString: 'nion')
		ifTrue: [ self recordMatch: #(3 24).
			self step ].
	true
		ifTrue: [ [ self recordMatch: #(24).
			self step.
			true ] whileTrue ].
	^ self reportLastMatch