generated
scan8
	self recordMatch: #(24).
	self step.
	currentCharacter == $e
		ifTrue: [ self recordMatch: #(24).
			self step.
			currentCharacter == $f
				ifTrue: [ self recordMatch: #(24).
					self step.
					currentCharacter == $t
						ifTrue: [ self recordMatch: #(18 24).
							self step ].
					true
						ifTrue: [ [ self recordMatch: #(24).
							self step.
							true ] whileTrue ].
					^ self reportLastMatch ].
			currentCharacter == $x
				ifTrue: [ self recordMatch: #(24).
					(self scanForString: '-param')
						ifTrue: [ self recordMatch: #(8 24).
							self step ] ].
			true
				ifTrue: [ [ self recordMatch: #(24).
					self step.
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $o
		ifTrue: [ self recordMatch: #(24).
			(self scanForString: 'cations')
				ifTrue: [ self recordMatch: #(20 24).
					self step ] ].
	true
		ifTrue: [ [ self recordMatch: #(24).
			self step.
			true ] whileTrue ].
	^ self reportLastMatch