generated
scan1
	self step.
	currentCharacter == $%
		ifTrue: [ ^ self recordAndReportMatch: #(6) ].
	currentCharacter == $e
		ifTrue: [ (self scanForString: 'xpect')
				ifTrue: [ ^ self recordAndReportMatch: #(11) ].
			^ self reportLastMatch ].
	currentCharacter == $l
		ifTrue:
			[ ^ self scan1X1 ].
	currentCharacter == $n
		ifTrue:
			[ ^ self scan1X4 ].
	currentCharacter == $p
		ifTrue:
			[ ^ self scan1X2 ].
	currentCharacter == $r
		ifTrue: [ (self scanForString: 'ight')
				ifTrue: [ ^ self recordAndReportMatch: #(19) ].
			^ self reportLastMatch ].
	currentCharacter == $t
		ifTrue:
			[ ^ self scan1X3 ].
	currentCharacter == $u
		ifTrue: [ (self scanForString: 'nion')
				ifTrue: [ ^ self recordAndReportMatch: #(3) ].
			^ self reportLastMatch ].
	currentCharacter == ${
		ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == $}
		ifTrue: [ ^ self recordAndReportMatch: #(10) ].
	^ self reportLastMatch