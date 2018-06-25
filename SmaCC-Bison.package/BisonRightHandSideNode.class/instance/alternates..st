generated
alternates: anOrderedCollection
	self setParents: self alternates to: nil.
	alternates := anOrderedCollection.
	self setParents: self alternates to: self