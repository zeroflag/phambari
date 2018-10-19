cluster operations
startAllServices
	| command |
	command := AmRequest new
		context: '_PARSE_.START.ALL_SERVICES';
		operationLevel: { 'level' -> 'CLUSTER'. 'cluster_name' -> name } asDictionary;
		body: { 'ServiceInfo' -> {'state' -> 'STARTED'} asDictionary } asDictionary;
		yourself.
	^ AmResult 
		of: (client put: command asDictionary to: 'services')
		client: client