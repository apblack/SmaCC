generated
scan1X2
	self step.
	currentCharacter == $a
		ifTrue: [ (self scanForString: 'rse-param')
				ifTrue: [ ^ self recordAndReportMatch: #(2) ].
			^ self reportLastMatch ].
	currentCharacter == $r
		ifTrue: [ (self scanForString: 'ec')
				ifTrue: [ ^ self recordAndReportMatch: #(5) ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ (self scanForString: 're-parser')
				ifTrue: [ ^ self recordAndReportMatch: #(9) ] ].
	^ self reportLastMatch