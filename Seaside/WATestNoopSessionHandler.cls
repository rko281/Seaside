"Filed out from Dolphin Smalltalk 7"!

WARequestHandler subclass: #WATestNoopSessionHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATestNoopSessionHandler guid: (GUID fromString: '{3dde0291-3d93-4095-ac02-2034bd3c3ced}')!
WATestNoopSessionHandler comment: ''!
!WATestNoopSessionHandler categoriesForClass!Seaside-Tests-Core-RequestHandling! !
!WATestNoopSessionHandler methodsFor!

handleFiltered: aRequestContext	"do nothing"!

isSession	^ true!

key: aString	"ignore"! !
!WATestNoopSessionHandler categoriesFor: #handleFiltered:!handling!public! !
!WATestNoopSessionHandler categoriesFor: #isSession!public!testing! !
!WATestNoopSessionHandler categoriesFor: #key:!accessing!public! !

