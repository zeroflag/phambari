cluster operations
services
	| services |
	services := client get: 'services'.
	^ (services at: 'items') collect: [ :each | 
		self service: ((each at: 'ServiceInfo') at: 'service_name') ]