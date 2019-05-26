"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WACacheListEntry
	instanceVariableNames: 'previous next time cacheEntry'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACacheListEntry guid: (GUID fromString: '{c7a46c9e-1563-4762-a7ef-e1d18996ba5e}')!
WACacheListEntry comment: 'I am a node in a sorted linked list in WAHashCache.    Instance Variables	cacheEntry:		<WACacheKeyEntry>	next:		<WACacheListEntry>	previous:		<WACacheListEntry>	time:		<Integer>time:	timestamp in seconds, could be the creation time or access time depending on with of the two linked lists it is'!
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

