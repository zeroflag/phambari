printing
printOn: aStream
	aStream
		nextPutAll: 'Id:';
		space.
	self id printOn: aStream.
	aStream
		space;
		nextPutAll: 'Status:';
		space;
		nextPutAll: self status.