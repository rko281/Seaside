"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAEncoder
	instanceVariableNames: 'stream'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAEncoder guid: (GUID fromString: '{061f0fa3-3762-4876-8953-7a77638de73f}')!

WAEncoder comment: 'I encode everything that is written to myself using #nextPut: and #nextPutAll: onto the wrapped stream.'!

!WAEncoder categoriesForClass!Seaside-Core-Document! !

!WAEncoder methodsFor!

greaseNext: anInteger putAll: aCollection startingAt: startIndex	self subclassResponsibility!

initializeOn: aStream	self initialize.	stream := aStream!

nextPut: aCharacter 	self subclassResponsibility!

nextPutAll: aString	self subclassResponsibility! !

!WAEncoder categoriesForMethods!
greaseNext:putAll:startingAt:!accessing!public! !
initializeOn:!initialization!public! !
nextPut:!accessing!public! !
nextPutAll:!accessing!public! !
!

!WAEncoder class methodsFor!

on: aStream	^ self basicNew initializeOn: aStream! !

!WAEncoder class categoriesForMethods!
on:!instance creation!public! !
!

