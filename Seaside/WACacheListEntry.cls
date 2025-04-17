"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WACacheListEntry
	instanceVariableNames: 'previous next time cacheEntry'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACacheListEntry guid: (GUID fromString: '{245e18e4-f9e6-4ebb-88b2-cf179935e2c7}')!

WACacheListEntry comment: 'I am a node in a sorted linked list in WAHashCache.    Instance Variables	cacheEntry:		<WACacheKeyEntry>	next:		<WACacheListEntry>	previous:		<WACacheListEntry>	time:		<Integer>time:	timestamp in seconds, could be the creation time or access time depending on with of the two linked lists it is'!

!WACacheListEntry categoriesForClass!Cache! !

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

!WACacheListEntry categoriesForMethods!
cacheEntry!accessing!public! !
expunge!operations!public! !
initializeTime!operations!public! !
initializeWithEntry:!initialization!public! !
next!accessing!public! !
next:!accessing!public! !
previous!accessing!public! !
previous:!accessing!public! !
time!accessing!public! !
!

!WACacheListEntry class methodsFor!

entry: aCacheEntry	^ self basicNew		initializeWithEntry: aCacheEntry;		yourself! !

!WACacheListEntry class categoriesForMethods!
entry:!instance creation!public! !
!

