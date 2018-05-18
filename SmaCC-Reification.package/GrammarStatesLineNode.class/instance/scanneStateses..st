generated
scanneStateses: anOrderedCollection
	self setParents: self scanneStateses to: nil.
	scanneStateses := anOrderedCollection.
	self setParents: self scanneStateses to: self