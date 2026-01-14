"Filed out from Dolphin Smalltalk"!

JSJavascriptElementBrush subclass: #JSJavascriptKeyValueBrush
	instanceVariableNames: 'key'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSJavascriptKeyValueBrush guid: (GUID fromString: '{b6ad5f71-2066-4e08-9f42-053cc77232da}')!

JSJavascriptKeyValueBrush comment: 'A JSON key value'!

!JSJavascriptKeyValueBrush categoriesForClass!Javascript-Core-Brushes! !

!JSJavascriptKeyValueBrush methodsFor!

initializeWithKey: aString	self initialize.	key := aString!

openBrush	super openBrush.	key javascriptOn: canvas.	self document nextPut: $:! !

!JSJavascriptKeyValueBrush categoriesForMethods!
initializeWithKey:!initialization!public! !
openBrush!private! !
!

!JSJavascriptKeyValueBrush class methodsFor!

key: aString	^ self basicNew initializeWithKey: aString! !

!JSJavascriptKeyValueBrush class categoriesForMethods!
key:!instance creation!public! !
!

