"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WACacheKeyEntry
	instanceVariableNames: 'key keyHash value next byAccessListEntry byCreationListEntry'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACacheKeyEntry guid: (GUID fromString: '{c3192236-0773-4cc0-8b16-3c1d4eef0f5b}')!

WACacheKeyEntry comment: 'I am an entry in the table of WAHashCache.Besides keys and values I keep track of linked list entries so they can be removed without scanning the list. Internal Representation and Key Implementation Points.    Instance Variables	byAccessListEntry:		<WACacheListEntry>	byCreationListEntry:		<WACacheListEntry>	key:		<Object>	keyHash:		<Integer>	next:		<WACacheKeyEntry>	value:		<Object>'!

!WACacheKeyEntry categoriesForClass!Seaside-Core-Cache! !

!WACacheKeyEntry methodsFor!

byAccessListEntry	^ byAccessListEntry!

byAccessListEntry: aCacheListEntry	byAccessListEntry := aCacheListEntry!

byCreationListEntry	^ byCreationListEntry!

byCreationListEntry: aCacheListEntry	byCreationListEntry := aCacheListEntry!

initializeWithKey: aKey value: anObject	self initialize.	key := aKey.	keyHash := aKey hash.	value := anObject!

key	^ key!

keyHash	^ keyHash!

next	^ next!

next: aCacheKeyEntry	next := aCacheKeyEntry!

printOn: aStream	super printOn: aStream.	aStream nextPut: $(.	key printOn: aStream.	aStream nextPutAll: ' -> '.	value printOn: aStream.	aStream nextPut: $)!

value	^ value!

value: anObject	value := anObject! !

!WACacheKeyEntry categoriesForMethods!
byAccessListEntry!accessing!public! !
byAccessListEntry:!accessing!public! !
byCreationListEntry!accessing!public! !
byCreationListEntry:!accessing!public! !
initializeWithKey:value:!initialization!public! !
key!accessing!public! !
keyHash!accessing!public! !
next!accessing!public! !
next:!accessing!public! !
printOn:!printing!public! !
value!accessing!public! !
value:!accessing!public! !
!

!WACacheKeyEntry class methodsFor!

key: aKey value: anObject	^ self basicNew		initializeWithKey: aKey value: anObject;		yourself! !

!WACacheKeyEntry class categoriesForMethods!
key:value:!instance creation!public! !
!

