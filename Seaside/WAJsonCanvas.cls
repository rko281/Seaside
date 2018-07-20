"Filed out from Dolphin Smalltalk 7"!

WACanvas subclass: #WAJsonCanvas
	instanceVariableNames: 'first'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAJsonCanvas guid: (GUID fromString: '{cfd84c75-c515-4dbf-b150-d6c03e5e656f}')!
WAJsonCanvas comment: ''!
!WAJsonCanvas categoriesForClass!Seaside-JSON-Core! !
!WAJsonCanvas methodsFor!

array: aBlock	^ (self brush: WAJsonArrayBrush new) with: aBlock!

boolean: aBoolean	self document stream nextPutAll: (aBoolean ifTrue: [ 'true' ] ifFalse: [ 'false' ])!

dateAndTime: aDateAndTime	" Note: date and time is not standard json. So we use the ISO 8601 standard here. We convert to string to make it valid json "	self document stream nextPut: $".	aDateAndTime printOn: self document stream.	self document stream nextPut: $"!

initializeWithContext: aRenderContext	super initializeWithContext: aRenderContext.	first := true!

key: aKeyString value: aValueObject	^ (self brush: (WAJsonKeyValueBrush key: aKeyString)) with: aValueObject!

nest: aBlock	first := true.	super nest: aBlock.	first := false!

nextPut: aCharacter 	self document nextPut: aCharacter!

null	self document stream nextPutAll: 'null'!

number: aNumber	aNumber printOn: self document stream!

object: aBlock	^ (self brush: WAJsonObjectBrush new) with: aBlock!

render: anObject	self flush.	anObject jsonOn: self!

string: aString	self document string: aString!

value: aBlock	^ (self brush: WAJsonValueBrush new) with: aBlock!

writeIfNotFirst: aString	first ifFalse: [		self document nextPutAll: aString ]! !
!WAJsonCanvas categoriesFor: #array:!public! !
!WAJsonCanvas categoriesFor: #boolean:!double/disptach!public! !
!WAJsonCanvas categoriesFor: #dateAndTime:!double/disptach!public! !
!WAJsonCanvas categoriesFor: #initializeWithContext:!initialization!public! !
!WAJsonCanvas categoriesFor: #key:value:!public! !
!WAJsonCanvas categoriesFor: #nest:!private! !
!WAJsonCanvas categoriesFor: #nextPut:!public! !
!WAJsonCanvas categoriesFor: #null!double/disptach!public! !
!WAJsonCanvas categoriesFor: #number:!double/disptach!public! !
!WAJsonCanvas categoriesFor: #object:!public! !
!WAJsonCanvas categoriesFor: #render:!public! !
!WAJsonCanvas categoriesFor: #string:!double/disptach!public! !
!WAJsonCanvas categoriesFor: #value:!public! !
!WAJsonCanvas categoriesFor: #writeIfNotFirst:!private! !

!WAJsonCanvas class methodsFor!

builder	^ (WABuilder on: self)		documentClass: WAJsonDocument;		yourself! !
!WAJsonCanvas class categoriesFor: #builder!instance creation!public! !

