rest
get: anUrl
	^ (self clientWithUrl: anUrl) 
		get