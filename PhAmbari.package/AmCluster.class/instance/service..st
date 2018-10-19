cluster operations
service: serviceName
	^ AmService 
		raw: (client get: 'services' asUrl / serviceName) 
		client: client