instance creation
on: aClass
	^ self new
		enableDebug: false;
		nodeClass: aClass;
		yourself