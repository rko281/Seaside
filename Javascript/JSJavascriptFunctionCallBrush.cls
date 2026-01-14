"Filed out from Dolphin Smalltalk"!

JSJavascriptBrush subclass: #JSJavascriptFunctionCallBrush
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSJavascriptFunctionCallBrush guid: (GUID fromString: '{84308ba2-d5ec-4997-a5d3-2feceb29fabb}')!

JSJavascriptFunctionCallBrush comment: ''!

!JSJavascriptFunctionCallBrush categoriesForClass!Javascript-Core-Brushes! !

!JSJavascriptFunctionCallBrush methodsFor!

closeBrush	self document nextPut: $)!

initializeWithName: aString	self initialize.	name := aString!

openBrush	self document identifier: name.	self document nextPut: $(! !

!JSJavascriptFunctionCallBrush categoriesForMethods!
closeBrush!private! !
initializeWithName:!initialization!public! !
openBrush!private! !
!

!JSJavascriptFunctionCallBrush class methodsFor!

name: aString	^ self basicNew initializeWithName: aString! !

!JSJavascriptFunctionCallBrush class categoriesForMethods!
name:!instance creation!public! !
!

