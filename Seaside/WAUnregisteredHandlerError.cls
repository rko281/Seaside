"Filed out from Dolphin Smalltalk"!

WAError subclass: #WAUnregisteredHandlerError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUnregisteredHandlerError guid: (GUID fromString: '{8d9bcaac-58ae-470c-8e2f-540e6f4261ab}')!

WAUnregisteredHandlerError comment: 'This error is signaled by WARegistry whenever an attempt is made to find the key or URL for a handler that is not registered in its cache.'!

!WAUnregisteredHandlerError categoriesForClass!Seaside-Core-Exceptions! !

!WAUnregisteredHandlerError methodsFor!

seasidePossibleCauses	^ #(		'You are trying to use a session or other request handler that has expired'	)! !

!WAUnregisteredHandlerError categoriesForMethods!
seasidePossibleCauses!accessing!public! !
!

