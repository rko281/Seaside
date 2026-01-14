"Filed out from Dolphin Smalltalk"!

WAJsonElementBrush subclass: #WAJsonKeyValueBrush
	instanceVariableNames: 'key'
	classVariableNames: 'StringKeysOnly'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAJsonKeyValueBrush guid: (GUID fromString: '{b770db70-a6a5-410b-892f-ae3ef6477867}')!

WAJsonKeyValueBrush comment: 'A JSON key value'!

!WAJsonKeyValueBrush categoriesForClass!Seaside-JSON-Core-Brushes! !

!WAJsonKeyValueBrush methodsFor!

initializeWithKey: aString	self initialize.	key := aString!

openBrush	super openBrush.	self class stringKeysOnly		ifTrue: [ key jsonKeyOn: canvas ]		ifFalse: [ key jsonOn: canvas ].	self document stream nextPutAll: ': '! !

!WAJsonKeyValueBrush categoriesForMethods!
initializeWithKey:!initialization!public! !
openBrush!private! !
!

!WAJsonKeyValueBrush class methodsFor!

key: aString	^ self basicNew initializeWithKey: aString!

stringKeysOnly	^ StringKeysOnly ifNil: [ true ]!

stringKeysOnly: aBoolean	StringKeysOnly := aBoolean! !

!WAJsonKeyValueBrush class categoriesForMethods!
key:!instance creation!public! !
stringKeysOnly!accessing!public! !
stringKeysOnly:!accessing!public! !
!

