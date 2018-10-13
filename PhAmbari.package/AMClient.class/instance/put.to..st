rest
put: anObject to: anUrl
	^ (self clientWithUrl: anUrl) 
		contents: anObject;
		put