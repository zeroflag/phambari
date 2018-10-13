rest
post: anObject to: anUrl
	^ (self clientWithUrl: anUrl) 
		contents: anObject;
		post