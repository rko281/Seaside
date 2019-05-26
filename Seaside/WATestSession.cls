"Filed out from Dolphin Smalltalk 7"!

WASession subclass: #WATestSession
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATestSession guid: (GUID fromString: '{0bbc594c-2f44-4a7e-9e62-363a1076fe03}')!
WATestSession comment: ''!
!WATestSession categoriesForClass!Seaside-Tests-Session! !
!WATestSession methodsFor!

start	(self requestContext response)		nextPutAll: 'start: ';		nextPutAll: self key! !
!WATestSession categoriesFor: #start!handling!public! !

