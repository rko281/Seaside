"Filed out from Dolphin Smalltalk"!

WAJsonElementBrush subclass: #WAJsonKeyValueBrush
	instanceVariableNames: 'key'
	classVariableNames: 'StringKeysOnly'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAJsonKeyValueBrush guid: (GUID fromString: '{9728a559-c937-4c68-9c93-047150afcd1a}')!

WAJsonKeyValueBrush comment: 'A JSON key value'!

!WAJsonKeyValueBrush categoriesForClass!Brushes! !

!WAJsonKeyValueBrush methodsFor!

initializeWithKey: aString	self initialize.	key := aString!

openBrush	super openBrush.	self class stringKeysOnly		ifTrue: [ key jsonKeyOn: canvas ]		ifFalse: [ key jsonOn: canvas ].	self document stream nextPutAll: ': '! !

!WAJsonKeyValueBrush categoriesForMethods!
initializeWithKey:!initialization!public! !
openBrush!private! !
!

!WAJsonKeyValueBrush class methodsFor!

key: aString	^ self basicNew initializeWithKey: aString!

stringKeysOnly	^ StringKeysOnly ifNil: [ false ]!

stringKeysOnly: aBoolean	StringKeysOnly := aBoolean! !

!WAJsonKeyValueBrush class categoriesForMethods!
key:!instance creation!public! !
stringKeysOnly!accessing!public! !
stringKeysOnly:!accessing!public! !
!

