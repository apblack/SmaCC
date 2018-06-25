generated
classeses: anOrderedCollection
	self setParents: self classeses to: nil.
	classeses := anOrderedCollection.
	self setParents: self classeses to: self