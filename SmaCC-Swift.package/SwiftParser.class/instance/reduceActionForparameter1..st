generated-reduction actions
reduceActionForparameter1: nodes
	| result |
	result := Array new: 28.
	result at: 1 put: (OrderedCollection new: 2).
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
	result at: 25 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 3).
	self add: ((nodes at: 4) at: 1) to: (result at: 4).
	self add: ((nodes at: 4) at: 2) to: (result at: 3).
	self add: ((nodes at: 5) at: 1) to: (result at: 4).
	self add: ((nodes at: 5) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 6) at: 1) to: (result at: 5).
	self addAll: ((nodes at: 6) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 6) at: 3) to: (result at: 4).
	self addAll: ((nodes at: 6) at: 4) to: (result at: 6).
	self addAll: ((nodes at: 6) at: 5) to: (result at: 7).
	self addAll: ((nodes at: 6) at: 6) to: (result at: 8).
	self addAll: ((nodes at: 6) at: 7) to: (result at: 9).
	self addAll: ((nodes at: 6) at: 8) to: (result at: 10).
	self addAll: ((nodes at: 6) at: 9) to: (result at: 11).
	self addAll: ((nodes at: 6) at: 10) to: (result at: 12).
	self addAll: ((nodes at: 6) at: 11) to: (result at: 13).
	self addAll: ((nodes at: 6) at: 12) to: (result at: 14).
	self addAll: ((nodes at: 6) at: 13) to: (result at: 15).
	self addAll: ((nodes at: 6) at: 14) to: (result at: 16).
	self addAll: ((nodes at: 6) at: 15) to: (result at: 17).
	self addAll: ((nodes at: 6) at: 16) to: (result at: 18).
	self addAll: ((nodes at: 6) at: 17) to: (result at: 19).
	self addAll: ((nodes at: 6) at: 18) to: (result at: 20).
	self addAll: ((nodes at: 6) at: 19) to: (result at: 21).
	self addAll: ((nodes at: 6) at: 20) to: (result at: 22).
	self addAll: ((nodes at: 6) at: 21) to: (result at: 23).
	self addAll: ((nodes at: 6) at: 22) to: (result at: 24).
	self addAll: ((nodes at: 6) at: 23) to: (result at: 25).
	self addAll: ((nodes at: 6) at: 24) to: (result at: 1).
	result at: 26 put: ((nodes at: 7) at: 1).
	result at: 27 put: ((nodes at: 7) at: 2).
	^ result