convenience
any
	"Need to test and do a pass on this..."
	| lvl anyC |
	lvl := 1.
	anyC := ''.
	[ | tmp |
		tmp := (stream upTo: $}).
		lvl := lvl - 1 + (tmp occurrencesOf: ${).
		anyC := anyC , tmp. 
		lvl = 0 ]
		whileFalse: [ 
			stream atEnd
				ifTrue: [ ^ self scannerError ].
			anyC := anyC , '}' ].
	matchActions := Array with: self anyId.
	^ self createTokenFor: '{' , anyC , '}'
