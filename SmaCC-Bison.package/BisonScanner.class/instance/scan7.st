generated
scan7
	self recordMatch: #(24).
	self step.
	currentCharacter == $%
		ifTrue: [ self recordMatch: #(6 24).
			self step.
			true
				ifTrue: [ [ self recordMatch: #(24).
					self step.
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $e
		ifTrue: [ self recordMatch: #(24).
			(self scanForString: 'xpect')
				ifTrue: [ self recordMatch: #(11 24).
					self step ].
			true
				ifTrue: [ [ self recordMatch: #(24).
					self step.
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $l
		ifTrue: [ ^ self scan8 ].
	currentCharacter == $n
		ifTrue: [ ^ self scan9 ].
	currentCharacter == $p
		ifTrue: [ ^ self scan10 ].
	currentCharacter == $r
		ifTrue: [ ^ self scan7X3 ].
	currentCharacter == $t
		ifTrue: [ ^ self scan7X1 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan7X2 ].
	currentCharacter == ${
		ifTrue: [ self recordMatch: #(7 24).
			self step.
			true
				ifTrue: [ [ self recordMatch: #(24).
					self step.
					true ] whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $}
		ifTrue: [ self recordMatch: #(10 24).
			self step ].
	true
		ifTrue: [ [ self recordMatch: #(24).
			self step.
			true ] whileTrue ].
	^ self reportLastMatch