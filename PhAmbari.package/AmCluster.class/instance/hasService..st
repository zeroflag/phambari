cluster operations
hasService: serviceName
	^ (self services collect: #name) includes: serviceName