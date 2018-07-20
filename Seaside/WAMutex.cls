﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAMutex
	instanceVariableNames: 'semaphore owner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMutex guid: (GUID fromString: '{0d4fbe57-62e1-41fb-ac58-be2d4b227816}')!
WAMutex comment: 'WAMutex provides mutual exclusion properties.
!WAMutex categoriesForClass!Seaside-Core-Utilities! !
!WAMutex methodsFor!

copy

critical: aBlock

initialize

owner

owner: aProcess

terminateOwner
!WAMutex categoriesFor: #copy!copying!public! !
!WAMutex categoriesFor: #critical:!mutual exclusion!public! !
!WAMutex categoriesFor: #initialize!initialization!public! !
!WAMutex categoriesFor: #owner!accessing!public! !
!WAMutex categoriesFor: #owner:!accessing!public! !
!WAMutex categoriesFor: #terminateOwner!mutual exclusion!public! !
