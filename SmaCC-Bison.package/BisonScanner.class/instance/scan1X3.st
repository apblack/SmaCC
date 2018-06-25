generated
scan1X3
	self step.
	currentCharacter == $o
		ifTrue: [ (self scanForString: 'ken')
				ifTrue: [ ^ self recordAndReportMatch: #(17) ].
			^ self reportLastMatch ].
	currentCharacter == $y
		ifTrue: [ (self scanForString: 'pe')
				ifTrue: [ ^ self recordAndReportMatch: #(4) ] ].
	^ self reportLastMatch