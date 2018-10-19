service operations
start 
	| result |
	result := client 
		put: {'ServiceInfo' -> {'state' -> 'STARTED'} asDictionary } asDictionary
		to: self href.
	^ AmResult of: result client: client