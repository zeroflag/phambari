acccessing
await
	[ self finished ] whileFalse: [ (Delay forMilliseconds: 1000) wait. self refresh ].
	self status = 'COMPLETED' 
		ifFalse: [ self error: self asString, ' failed.' ].