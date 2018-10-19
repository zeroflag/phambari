instance creation
of: aDictionary client: anAmClient
	| raw |
	^ aDictionary 
		ifEmpty: [ AmNoResult new ]
		ifNotEmpty: 
			[ raw := anAmClient get: (aDictionary at: 'href'). 
			self new setRaw: raw client: anAmClient ]