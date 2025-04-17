"Filed out from Dolphin Smalltalk"!

WAError subclass: #WAUnregisteredHandlerError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUnregisteredHandlerError guid: (GUID fromString: '{98ffcf4d-69c4-4548-ab4a-9edb574dfa57}')!

WAUnregisteredHandlerError comment: 'This error is signaled by WARegistry whenever an attempt is made to find the key or URL for a handler that is not registered in its cache.'!

!WAUnregisteredHandlerError categoriesForClass!Exceptions! !

!WAUnregisteredHandlerError methodsFor!

seasidePossibleCauses	^ #(		'You are trying to use a session or other request handler that has expired'	)! !

!WAUnregisteredHandlerError categoriesForMethods!
seasidePossibleCauses!accessing!public! !
!

