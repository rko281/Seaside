"Filed out from Dolphin Smalltalk 7"!

WAError subclass: #WAUnregisteredHandlerError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUnregisteredHandlerError guid: (GUID fromString: '{ee71d846-2872-4da1-999c-7d5d34f7f8e3}')!
WAUnregisteredHandlerError comment: 'This error is signaled by WARegistry whenever an attempt is made to find the key or URL for a handler that is not registered in its cache.'!
!WAUnregisteredHandlerError categoriesForClass!Seaside-Core-Exceptions! !
!WAUnregisteredHandlerError methodsFor!

seasidePossibleCauses	^ #(		'You are trying to use a session or other request handler that has expired'	)! !
!WAUnregisteredHandlerError categoriesFor: #seasidePossibleCauses!accessing!public! !

