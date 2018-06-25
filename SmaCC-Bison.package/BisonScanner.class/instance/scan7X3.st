generated
scan7X3
	self recordMatch: #(24).
	(self scanForString: 'ight')
		ifTrue: [ self recordMatch: #(19 24).
			self step ].
	true
		ifTrue: [ [ self recordMatch: #(24).
			self step.
			true ] whileTrue ].
	^ self reportLastMatch