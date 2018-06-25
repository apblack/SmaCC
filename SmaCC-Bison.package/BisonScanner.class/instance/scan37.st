generated
scan37
	self recordMatch: #(34).
	self step.
	currentCharacter == $%
		ifTrue: [ ^ self scan33 ].
	currentCharacter == $a
		ifTrue: [ self step.
			currentCharacter == $m
				ifTrue: [ self recordMatch: #(34).
					self step.
					currentCharacter == $%
						ifTrue: [ ^ self scan33 ].
					currentCharacter == $e
						ifTrue: [ self step.
							currentCharacter == $-
								ifTrue: [ self recordMatch: #(34).
									self step.
									currentCharacter == $%
										ifTrue: [ ^ self scan33 ].
									currentCharacter == $p
										ifTrue: [ self step.
											currentCharacter == $r
												ifTrue: [ self recordMatch: #(34).
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
																	currentCharacter == $i
																		ifTrue: [ self step.
																			currentCharacter == $x
																				ifTrue: [ self recordMatch: #(12 34).
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
					^ self scan31 ].
			^ self scan32 ].
	currentCharacter == $o
		ifTrue: [ self step.
			currentCharacter == $n
				ifTrue: [ self recordMatch: #(34).
					self step.
					currentCharacter == $%
						ifTrue: [ ^ self scan33 ].
					currentCharacter == $a
						ifTrue: [ self step.
							currentCharacter == $s
								ifTrue: [ self recordMatch: #(34).
									self step.
									currentCharacter == $%
										ifTrue: [ ^ self scan33 ].
									currentCharacter == $s
										ifTrue: [ self step.
											currentCharacter == $o
												ifTrue: [ self recordMatch: #(34).
													self step.
													currentCharacter == $%
														ifTrue: [ ^ self scan33 ].
													currentCharacter == $c
														ifTrue: [ self recordMatch: #(14).
															self step.
															^ self scan32 ].
													^ self scan31 ].
											^ self scan32 ].
									^ self scan31 ].
							^ self scan32 ].
					^ self scan31 ].
			^ self scan32 ].
	^ self scan31