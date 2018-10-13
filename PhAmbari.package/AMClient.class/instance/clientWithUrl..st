private
clientWithUrl: anUrl
	| client |
	client := ZnClient new
		url: baseUrl / anUrl;
		contentWriter: contentWriter;
		contentReader: contentReader;
		yourself.
	headers do: [ :each | each addTo: client ].
	credential authenticate: client.
	^ client