"Filed out from Dolphin Smalltalk"!

JSJavascriptBrush subclass: #JSJavascriptConstructorCallBrush
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSJavascriptConstructorCallBrush guid: (GUID fromString: '{1e2643ea-8838-494b-a205-468ef0b5c3b8}')!

JSJavascriptConstructorCallBrush comment: ''!

!JSJavascriptConstructorCallBrush categoriesForClass!Javascript-Core-Brushes! !

!JSJavascriptConstructorCallBrush methodsFor!

closeBrush	self document nextPut: $)!

initializeWithName: aString	self initialize.	name := aString!

openBrush	self document keyword: 'new'.	self document identifier: name.	self document nextPut: $(! !

!JSJavascriptConstructorCallBrush categoriesForMethods!
closeBrush!private! !
initializeWithName:!initialization!public! !
openBrush!private! !
!

!JSJavascriptConstructorCallBrush class methodsFor!

name: aString	^ self basicNew initializeWithName: aString! !

!JSJavascriptConstructorCallBrush class categoriesForMethods!
name:!instance creation!public! !
!

