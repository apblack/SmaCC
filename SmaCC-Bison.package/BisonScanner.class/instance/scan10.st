generated
scan10
	self recordMatch: #(24).
	self step.
	currentCharacter == $a
		ifTrue: [ self recordMatch: #(24).
			(self scanForString: 'rse-param')
				ifTrue: [ self recordMatch: #(2 24).
					self step ].
			true
				ifTrue: [ [ self recordMatch: #(24).
					self step.
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $r
		ifTrue: [ self recordMatch: #(24).
			(self scanForString: 'ec')
				ifTrue: [ self recordMatch: #(5 24).
					self step ].
			true
				ifTrue: [ [ self recordMatch: #(24).
					self step.
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ self recordMatch: #(24).
			(self scanForString: 're-parser')
				ifTrue: [ self recordMatch: #(9 24).
					self step ] ].
	true
		ifTrue: [ [ self recordMatch: #(24).
			self step.
			true ] whileTrue ].
	^ self reportLastMatch