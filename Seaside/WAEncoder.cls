"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAEncoder
	instanceVariableNames: 'stream'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAEncoder guid: (GUID fromString: '{50151cca-efbf-4af7-b004-d6b70b074e27}')!
WAEncoder comment: 'I encode everything that is written to myself using #nextPut: and #nextPutAll: onto the wrapped stream.'!
!WAEncoder categoriesForClass!Seaside-Core-Document! !
!WAEncoder methodsFor!

initializeOn: aStream	self initialize.	stream := aStream!

nextPut: aCharacter 	self subclassResponsibility!

nextPutAll: aString	self subclassResponsibility! !
!WAEncoder categoriesFor: #initializeOn:!initialization!public! !
!WAEncoder categoriesFor: #nextPut:!accessing!public! !
!WAEncoder categoriesFor: #nextPutAll:!accessing!public! !

!WAEncoder class methodsFor!

on: aStream	^ self basicNew initializeOn: aStream! !
!WAEncoder class categoriesFor: #on:!instance creation!public! !

