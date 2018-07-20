"Filed out from Dolphin Smalltalk 7"!

WASession subclass: #WATestSession
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATestSession guid: (GUID fromString: '{dc08efc6-72ed-4509-aaa6-06a5d14a1e1f}')!
WATestSession comment: ''!
!WATestSession categoriesForClass!Seaside-Tests-Session! !
!WATestSession methodsFor!

start	(self requestContext response)		nextPutAll: 'start: ';		nextPutAll: self key! !
!WATestSession categoriesFor: #start!handling!public! !

