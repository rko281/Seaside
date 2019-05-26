"Filed out from Dolphin Smalltalk 7"!

WAJsonElementBrush subclass: #WAJsonKeyValueBrush
	instanceVariableNames: 'key'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAJsonKeyValueBrush guid: (GUID fromString: '{09b2f484-29ef-4efa-8e0d-da847725f317}')!
WAJsonKeyValueBrush comment: ''!
!WAJsonKeyValueBrush categoriesForClass!Seaside-JSON-Core! !
!WAJsonKeyValueBrush methodsFor!

initializeWithKey: aString	self initialize.	key := aString!

openBrush	super openBrush.	key jsonOn: canvas.	self document stream nextPutAll: ': '! !
!WAJsonKeyValueBrush categoriesFor: #initializeWithKey:!initialization!public! !
!WAJsonKeyValueBrush categoriesFor: #openBrush!private! !

!WAJsonKeyValueBrush class methodsFor!

key: aString	^ self basicNew initializeWithKey: aString! !
!WAJsonKeyValueBrush class categoriesFor: #key:!instance creation!public! !

