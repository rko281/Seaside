"Filed out from Dolphin Smalltalk"!

WARequestHandler subclass: #WATestNoopSessionHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATestNoopSessionHandler guid: (GUID fromString: '{24f6b2bd-2b61-4100-bd69-da909d1a2ed3}')!

WATestNoopSessionHandler comment: ''!

!WATestNoopSessionHandler categoriesForClass!RequestHandling! !

!WATestNoopSessionHandler methodsFor!

handleFiltered: aRequestContext	"do nothing"!

isSession	^ true!

key: aString	"ignore"! !

!WATestNoopSessionHandler categoriesForMethods!
handleFiltered:!handling!public! !
isSession!public!testing! !
key:!accessing!public! !
!

