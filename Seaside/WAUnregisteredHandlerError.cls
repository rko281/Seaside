"Filed out from Dolphin Smalltalk 7"!

WAError subclass: #WAUnregisteredHandlerError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUnregisteredHandlerError guid: (GUID fromString: '{8f90311d-5a7b-4c5b-b333-429ce6f0c99e}')!
WAUnregisteredHandlerError comment: 'This error is signaled by WARegistry whenever an attempt is made to find the key or URL for a handler that is not registered in its cache.'!
!WAUnregisteredHandlerError categoriesForClass!Seaside-Core-Exceptions! !
!WAUnregisteredHandlerError methodsFor!

seasidePossibleCauses	^ #(		'You are trying to use a session or other request handler that has expired'	)! !
!WAUnregisteredHandlerError categoriesFor: #seasidePossibleCauses!accessing!public! !

