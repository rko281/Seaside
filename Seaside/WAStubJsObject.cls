"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAStubJsObject
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAStubJsObject guid: (GUID fromString: '{8c7926b4-f267-4395-a559-4a080f2e8435}')!

WAStubJsObject comment: 'I exsit so that script generator classes can be tested without loading the Javascript package.'!

!WAStubJsObject categoriesForClass!Base! !

!WAStubJsObject methodsFor!

initializeOn: anObject	self initialize.	value := anObject!

javascriptOn: aStream	aStream nextPutAll: value! !

!WAStubJsObject categoriesForMethods!
initializeOn:!initialization!public! !
javascriptOn:!public!writing! !
!

!WAStubJsObject class methodsFor!

on: anObject	^ self basicNew initializeOn: anObject! !

!WAStubJsObject class categoriesForMethods!
on:!instance creation!public! !
!

