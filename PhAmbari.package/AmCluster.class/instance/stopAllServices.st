cluster operations
stopAllServices
	| command |
	command := AmRequest new
		context: '_PARSE_.STOP.ALL_SERVICES';
		operationLevel: { 'level' -> 'CLUSTER'. 'cluster_name' -> name } asDictionary;
		body: { 'ServiceInfo' -> {'state' -> 'INSTALLED'} asDictionary } asDictionary;
		yourself.
	^ AmResult 
		of: (client put: command asDictionary to: 'services')
		client: client