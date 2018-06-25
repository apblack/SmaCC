generated
rules: anOrderedCollection
	self setParents: self rules to: nil.
	rules := anOrderedCollection.
	self setParents: self rules to: self