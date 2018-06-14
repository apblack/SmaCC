generated
scan4
	self step.
	currentCharacter ~~ $'
		ifTrue: [ self step.
			currentCharacter == $'
				ifTrue: [ ^ self recordAndReportMatch: #(33) ] ].
	^ self reportLastMatch