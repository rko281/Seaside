"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAStubJsObject
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAStubJsObject guid: (GUID fromString: '{3631716e-eb20-4493-95e7-5c79e9ba30d2}')!

WAStubJsObject comment: 'I exsit so that script generator classes can be tested without loading the Javascript package.'!

!WAStubJsObject categoriesForClass!Seaside-Tests-Canvas-Base! !

!WAStubJsObject methodsFor!

initializeOn: anObject	self initialize.	value := anObject!

javascriptOn: aRenderer	aRenderer javascript: value! !

!WAStubJsObject categoriesForMethods!
initializeOn:!initialization!public! !
javascriptOn:!public!writing! !
!

!WAStubJsObject class methodsFor!

on: anObject	^ self basicNew initializeOn: anObject! !

!WAStubJsObject class categoriesForMethods!
on:!instance creation!public! !
!

