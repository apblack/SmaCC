generated-reduction actions
reduceActionForsubscript_result1: nodes
	| result |
	result := Array new: 24.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	result at: 13 put: (OrderedCollection new: 2).
	result at: 14 put: (OrderedCollection new: 2).
	result at: 15 put: (OrderedCollection new: 2).
	result at: 16 put: (OrderedCollection new: 2).
	result at: 17 put: (OrderedCollection new: 2).
	result at: 18 put: (OrderedCollection new: 2).
	result at: 19 put: (OrderedCollection new: 2).
	result at: 20 put: (OrderedCollection new: 2).
	result at: 21 put: (OrderedCollection new: 2).
	result at: 22 put: (OrderedCollection new: 2).
	result at: 23 put: (OrderedCollection new: 2).
	result at: 24 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 5).
	self addAll: ((nodes at: 2) at: 5) to: (result at: 6).
	self addAll: ((nodes at: 2) at: 6) to: (result at: 7).
	self addAll: ((nodes at: 2) at: 7) to: (result at: 8).
	self addAll: ((nodes at: 2) at: 8) to: (result at: 9).
	self addAll: ((nodes at: 2) at: 9) to: (result at: 10).
	self addAll: ((nodes at: 2) at: 10) to: (result at: 11).
	self addAll: ((nodes at: 2) at: 11) to: (result at: 12).
	self addAll: ((nodes at: 2) at: 12) to: (result at: 13).
	^ result