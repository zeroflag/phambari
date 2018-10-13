credential
authenticate: aZnClient
	| header |
	header := AmHeader
		name: 'Authorization'
		value: 'Basic ', self encodedCredentials.
	header addTo: aZnClient.