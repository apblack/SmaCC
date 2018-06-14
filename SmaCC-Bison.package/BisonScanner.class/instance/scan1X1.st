generated
scan1X1
	self step.
	currentCharacter == $e
		ifTrue: [ self step.
			currentCharacter == $f
				ifTrue: [ self step.
					currentCharacter == $t
						ifTrue: [ ^ self recordAndReportMatch: #(18) ].
					^ self reportLastMatch ].
			currentCharacter == $x
				ifTrue: [ (self scanForString: '-param')
						ifTrue: [ ^ self recordAndReportMatch: #(8) ] ].
			^ self reportLastMatch ].
	currentCharacter == $o
		ifTrue: [ (self scanForString: 'cations')
				ifTrue: [ ^ self recordAndReportMatch: #(20) ] ].
	^ self reportLastMatch