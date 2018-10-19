content reader
value: aZnStringEntity 
	^ aZnStringEntity 
		ifNil: [ Dictionary new ] 
		ifNotNil: [ NeoJSONReader fromString: aZnStringEntity contents ]