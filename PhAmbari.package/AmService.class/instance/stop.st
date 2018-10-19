service operations
stop 
	| result |
	result := client 
		put: {'ServiceInfo' -> {'state' -> 'INSTALLED'} asDictionary } asDictionary
		to: self href.
	^ AmResult of: result client: client