initialization
initialize 
	super initialize.
	request := Dictionary new 
		at: 'RequestInfo' put: Dictionary new;
		at: 'Body' put: Dictionary new;
		yourself.