private
clientWithUrl: anUrl
	| client |
	client := ZnClient new
		url: (anUrl asZnUrl isAbsolute ifTrue: [ anUrl ] ifFalse: [ baseUrl / anUrl ]);
		contentWriter: contentWriter;
		contentReader: contentReader;
		yourself.
	headers do: [ :each | each addTo: client ].
	credential authenticate: client.
	^ client