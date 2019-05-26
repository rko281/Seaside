"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WACacheKeyEntry
	instanceVariableNames: 'key keyHash value next byAccessListEntry byCreationListEntry'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACacheKeyEntry guid: (GUID fromString: '{5612de66-d845-4e45-8b85-83e0882f430a}')!
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
!WACacheKeyEntry categoriesFor: #byAccessListEntry!accessing!public! !
!WACacheKeyEntry categoriesFor: #byAccessListEntry:!accessing!public! !
!WACacheKeyEntry categoriesFor: #byCreationListEntry!accessing!public! !
!WACacheKeyEntry categoriesFor: #byCreationListEntry:!accessing!public! !
!WACacheKeyEntry categoriesFor: #initializeWithKey:value:!initialization!public! !
!WACacheKeyEntry categoriesFor: #key!accessing!public! !
!WACacheKeyEntry categoriesFor: #keyHash!accessing!public! !
!WACacheKeyEntry categoriesFor: #next!accessing!public! !
!WACacheKeyEntry categoriesFor: #next:!accessing!public! !
!WACacheKeyEntry categoriesFor: #printOn:!printing!public! !
!WACacheKeyEntry categoriesFor: #value!accessing!public! !
!WACacheKeyEntry categoriesFor: #value:!accessing!public! !

!WACacheKeyEntry class methodsFor!

key: aKey value: anObject	^ self basicNew		initializeWithKey: aKey value: anObject;		yourself! !
!WACacheKeyEntry class categoriesFor: #key:value:!instance creation!public! !

