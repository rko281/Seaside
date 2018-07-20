"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WACacheListEntry
	instanceVariableNames: 'previous next time cacheEntry'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACacheListEntry guid: (GUID fromString: '{3a481d72-6278-4ba2-92d6-c040227d7d8d}')!
WACacheListEntry comment: ''!
!WACacheListEntry categoriesForClass!Seaside-Core-Cache! !
!WACacheListEntry methodsFor!

cacheEntry	^ cacheEntry!

expunge	next isNil ifFalse: [		next previous: previous ].	previous isNil ifFalse: [		previous next: next ].	next := nil.	previous := nil!

initializeTime	time := Time totalSeconds!

initializeWithEntry: aCacheEntry	self initialize.	cacheEntry := aCacheEntry.	self initializeTime!

next	^ next!

next: aCacheListEntry	next := aCacheListEntry!

previous	^ previous!

previous: aCacheListEntry	previous := aCacheListEntry!

time	^ time! !
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

entry: aCacheEntry	^ self basicNew		initializeWithEntry: aCacheEntry;		yourself! !
!WACacheListEntry class categoriesFor: #entry:!instance creation!public! !

