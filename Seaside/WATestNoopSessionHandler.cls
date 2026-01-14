"Filed out from Dolphin Smalltalk"!

WARequestHandler subclass: #WATestNoopSessionHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATestNoopSessionHandler guid: (GUID fromString: '{f9a6c92b-76e1-4058-803a-acc6f3ca5b11}')!

WATestNoopSessionHandler comment: ''!

!WATestNoopSessionHandler categoriesForClass!Seaside-Tests-Core-RequestHandling! !

!WATestNoopSessionHandler methodsFor!

handleFiltered: aRequestContext	"do nothing"!

isSession	^ true!

key: aString	"ignore"! !

!WATestNoopSessionHandler categoriesForMethods!
handleFiltered:!handling!public! !
isSession!public!testing! !
key:!accessing!public! !
!

