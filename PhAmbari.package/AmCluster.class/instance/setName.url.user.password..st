initialization
setName: nameString url: urlString user: userString password: passwordString 
	name := nameString.
	client := AmClient new
		baseUrl: urlString asUrl / '/api/v1/clusters' / nameString ;
		credential: (AmBasicCredential username: userString password: passwordString);
		headers: { AmHeader csrf };
		contentWriter: AmJsonWriter new;
		contentReader: AmJsonReader new.
	^ self