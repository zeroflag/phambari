initialization
initialize 
	super initialize.
	headers := OrderedCollection new.
	credential := AmNoCredential new.
	contentReader := [ :any | any ].
	contentWriter := [ :any | any ].