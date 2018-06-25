generated
scan36
	self recordMatch: #(34).
	self step.
	currentCharacter == $%
		ifTrue: [ ^ self scan33 ].
	currentCharacter == $e
		ifTrue: [ self step.
			currentCharacter == $f
				ifTrue: [ self recordMatch: #(34).
					self step.
					currentCharacter == $%
						ifTrue: [ ^ self scan33 ].
					currentCharacter == $t
						ifTrue: [ self recordMatch: #(18).
							self step.
							^ self scan32 ].
					^ self scan31 ].
			currentCharacter == $x
				ifTrue: [ self recordMatch: #(34).
					self step.
					currentCharacter == $%
						ifTrue: [ ^ self scan33 ].
					currentCharacter == $-
						ifTrue: [ self step.
							currentCharacter == $p
								ifTrue: [ self recordMatch: #(34).
									self step.
									currentCharacter == $%
										ifTrue: [ ^ self scan33 ].
									currentCharacter == $a
										ifTrue: [ self step.
											currentCharacter == $r
												ifTrue: [ self recordMatch: #(34).
													self step.
													currentCharacter == $%
														ifTrue: [ ^ self scan33 ].
													currentCharacter == $a
														ifTrue: [ self step.
															currentCharacter == $m
																ifTrue: [ self recordMatch: #(8 34).
																	self step.
																	currentCharacter == $%
																		ifTrue: [ ^ self scan33 ].
																	^ self scan31 ].
															^ self scan32 ].
													^ self scan31 ].
											^ self scan32 ].
									^ self scan31 ].
							^ self scan32 ].
					^ self scan31 ].
			^ self scan32 ].
	currentCharacter == $o
		ifTrue: [ self step.
			currentCharacter == $c
				ifTrue: [ self recordMatch: #(34).
					self step.
					currentCharacter == $%
						ifTrue: [ ^ self scan33 ].
					currentCharacter == $a
						ifTrue: [ self step.
							currentCharacter == $t
								ifTrue: [ self recordMatch: #(34).
									self step.
									currentCharacter == $%
										ifTrue: [ ^ self scan33 ].
									currentCharacter == $i
										ifTrue: [ self step.
											currentCharacter == $o
												ifTrue: [ self recordMatch: #(34).
													self step.
													currentCharacter == $%
														ifTrue: [ ^ self scan33 ].
													currentCharacter == $n
														ifTrue: [ self step.
															currentCharacter == $s
																ifTrue: [ self recordMatch: #(20 34).
																	self step.
																	currentCharacter == $%
																		ifTrue: [ ^ self scan33 ].
																	^ self scan31 ].
															^ self scan32 ].
													^ self scan31 ].
											^ self scan32 ].
									^ self scan31 ].
							^ self scan32 ].
					^ self scan31 ].
			^ self scan32 ].
	^ self scan31