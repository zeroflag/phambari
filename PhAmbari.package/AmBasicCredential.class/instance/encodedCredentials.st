private
encodedCredentials
	^ (username, ':', password) asByteArray base64Encoded
		copyReplaceAll: String crlf
		with: ''