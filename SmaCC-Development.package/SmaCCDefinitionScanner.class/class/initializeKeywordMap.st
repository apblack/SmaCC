generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(30 'annotate_tokens' #(26 #(#directives))) #(30 'attributes' #(14 #(#directives))) #(30 'error' #(7 #(#default #directives #parser #scanner))) #(30 'excludes' #(11 #(#directives))) #(30 'fglr' #(23 #(#directives))) #(30 'glr' #(22 #(#directives))) #(30 'hierarchy' #(13 #(#directives))) #(30 'id' #(20 #(#directives))) #(30 'ignore_variables' #(25 #(#directives))) #(30 'ignorecase' #(24 #(#directives))) #(30 'left' #(17 #(#directives))) #(30 'nonassoc' #(19 #(#directives))) #(30 'prefix' #(15 #(#directives))) #(30 'right' #(18 #(#directives))) #(30 'root' #(12 #(#directives))) #(30 'start' #(21 #(#directives))) #(30 'states' #(10 #(#directives))) #(30 'suffix' #(16 #(#directives))) #(30 'unicode' #(27 #(#directives))))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap