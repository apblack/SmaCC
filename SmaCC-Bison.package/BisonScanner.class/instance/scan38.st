generated
scan38
	self recordMatch: #(34).
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
					currentCharacter == $s
						ifTrue: [ self step.
							currentCharacter == $e
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
																				ifTrue: [ self recordMatch: #(2 34).
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
	currentCharacter == $r
		ifTrue: [ self step.
			currentCharacter == $e
				ifTrue: [ self recordMatch: #(34).
					self step.
					currentCharacter == $%
						ifTrue: [ ^ self scan33 ].
					currentCharacter == $c
						ifTrue: [ self recordMatch: #(5).
							self step.
							^ self scan32 ].
					^ self scan31 ].
			^ self scan32 ].
	currentCharacter == $u
		ifTrue: [ self step.
			currentCharacter == $r
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
											currentCharacter == $a
												ifTrue: [ self recordMatch: #(34).
													self step.
													currentCharacter == $%
														ifTrue: [ ^ self scan33 ].
													currentCharacter == $r
														ifTrue: [ self step.
															currentCharacter == $s
																ifTrue: [ self recordMatch: #(34).
																	self step.
																	currentCharacter == $%
																		ifTrue: [ ^ self scan33 ].
																	currentCharacter == $e
																		ifTrue: [ self step.
																			currentCharacter == $r
																				ifTrue: [ self recordMatch: #(9 34).
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
	^ self scan31