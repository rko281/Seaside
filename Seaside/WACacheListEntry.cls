﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WACacheListEntry
	instanceVariableNames: 'previous next time cacheEntry'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACacheListEntry guid: (GUID fromString: '{3a481d72-6278-4ba2-92d6-c040227d7d8d}')!
WACacheListEntry comment: ''!
!WACacheListEntry categoriesForClass!Seaside-Core-Cache! !
!WACacheListEntry methodsFor!

cacheEntry

expunge

initializeTime

initializeWithEntry: aCacheEntry

next

next: aCacheListEntry

previous

previous: aCacheListEntry

time
!WACacheListEntry categoriesFor: #cacheEntry!accessing!public! !
!WACacheListEntry categoriesFor: #expunge!operations!public! !
!WACacheListEntry categoriesFor: #initializeTime!operations!public! !
!WACacheListEntry categoriesFor: #initializeWithEntry:!initialization!public! !
!WACacheListEntry categoriesFor: #next!accessing!public! !
!WACacheListEntry categoriesFor: #next:!accessing!public! !
!WACacheListEntry categoriesFor: #previous!accessing!public! !
!WACacheListEntry categoriesFor: #previous:!accessing!public! !
!WACacheListEntry categoriesFor: #time!accessing!public! !

!WACacheListEntry class methodsFor!

entry: aCacheEntry
!WACacheListEntry class categoriesFor: #entry:!instance creation!public! !
