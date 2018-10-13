rest
delete: anUrl
	^ (self clientWithUrl: anUrl) 
		delete