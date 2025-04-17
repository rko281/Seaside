"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAEncoder
	instanceVariableNames: 'stream'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAEncoder guid: (GUID fromString: '{84808d2d-7027-4409-8986-5fc5377c2f8e}')!

WAEncoder comment: 'I encode everything that is written to myself using #nextPut: and #nextPutAll: onto the wrapped stream.'!

!WAEncoder categoriesForClass!Document! !

!WAEncoder methodsFor!

initializeOn: aStream	self initialize.	stream := aStream!

nextPut: aCharacter 	self subclassResponsibility!

nextPutAll: aString	self subclassResponsibility! !

!WAEncoder categoriesForMethods!
initializeOn:!initialization!public! !
nextPut:!accessing!public! !
nextPutAll:!accessing!public! !
!

!WAEncoder class methodsFor!

on: aStream	^ self basicNew initializeOn: aStream! !

!WAEncoder class categoriesForMethods!
on:!instance creation!public! !
!

