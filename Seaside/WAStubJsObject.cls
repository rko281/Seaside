"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAStubJsObject
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAStubJsObject guid: (GUID fromString: '{2694742f-b6dd-482d-ab84-170afa203698}')!
WAStubJsObject comment: 'I exsit so that script generator classes can be tested without loading the Javascript package.'!
!WAStubJsObject categoriesForClass!Seaside-Tests-Canvas! !
!WAStubJsObject methodsFor!

initializeOn: anObject	self initialize.	value := anObject!

javascriptOn: aStream	aStream nextPutAll: value! !
!WAStubJsObject categoriesFor: #initializeOn:!initialization!public! !
!WAStubJsObject categoriesFor: #javascriptOn:!public!writing! !

!WAStubJsObject class methodsFor!

on: anObject	^ self basicNew initializeOn: anObject! !
!WAStubJsObject class categoriesFor: #on:!instance creation!public! !

