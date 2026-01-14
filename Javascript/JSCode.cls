"Filed out from Dolphin Smalltalk"!

WAObject subclass: #JSCode
	instanceVariableNames: 'code'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSCode guid: (GUID fromString: '{0638769e-a2f4-4f6b-900f-0dc747172736}')!

JSCode comment: 'I am unescaped Javascript code that is rendered verbatim.'!

!JSCode categoriesForClass!Javascript-Core-Base! !

!JSCode methodsFor!

initializeOn: aString	self initialize.	code := aString!

javascriptOn: aRenderer	aRenderer javascript: code! !

!JSCode categoriesForMethods!
initializeOn:!initialization!public! !
javascriptOn:!printing!public! !
!

!JSCode class methodsFor!

on: aString	^ self basicNew initializeOn: aString! !

!JSCode class categoriesForMethods!
on:!instance creation!public! !
!

