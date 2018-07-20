"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WACacheKeyEntry
	instanceVariableNames: 'key keyHash value next byAccessListEntry byCreationListEntry'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACacheKeyEntry guid: (GUID fromString: '{20858d0b-ed33-419f-a193-e7a7419bcc65}')!
WACacheKeyEntry comment: ''!
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

