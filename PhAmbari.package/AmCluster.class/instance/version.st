cluster operations
version
	^ ((client get: '/') at: 'Clusters') at: 'version'