generated
scan1X4
	self step.
	currentCharacter == $a
		ifTrue: [ (self scanForString: 'me-prefix')
				ifTrue: [ ^ self recordAndReportMatch: #(12) ].
			^ self reportLastMatch ].
	currentCharacter == $o
		ifTrue: [ (self scanForString: 'nassoc')
				ifTrue: [ ^ self recordAndReportMatch: #(14) ] ].
	^ self reportLastMatch