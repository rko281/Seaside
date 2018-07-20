"Filed out from Dolphin Smalltalk 7"!

WARequestHandler subclass: #WATestNoopSessionHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATestNoopSessionHandler guid: (GUID fromString: '{bdb693cd-0866-4c22-9b8a-ccca51867442}')!
WATestNoopSessionHandler comment: ''!
!WATestNoopSessionHandler categoriesForClass!Seaside-Tests-Core-RequestHandling! !
!WATestNoopSessionHandler methodsFor!

handleFiltered: aRequestContext	"do nothing"!

isSession	^ true!

key: aString	"ignore"! !
!WATestNoopSessionHandler categoriesFor: #handleFiltered:!handling!public! !
!WATestNoopSessionHandler categoriesFor: #isSession!public!testing! !
!WATestNoopSessionHandler categoriesFor: #key:!accessing!public! !

