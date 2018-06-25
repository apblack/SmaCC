generated
scanForTokenX1X1
	self step.
	(currentCharacter <= $;
		or: [ currentCharacter == $= or: [ currentCharacter >= $? ] ])
		ifTrue: [ [ self step.
			currentCharacter == $>
				ifTrue: [ ^ self recordAndReportMatch: #(32) ].
			currentCharacter <= $;
				or: [ currentCharacter == $= or: [ currentCharacter >= $? ] ] ]
				whileTrue ].
	^ self reportLastMatch