generated
scan21
	self step.
	currentCharacter = $e
		ifTrue: [ 
			self step.
			currentCharacter = $n
				ifTrue: [ ^ self recordAndReportMatch: #(2) ] ].
	^ self reportLastMatch