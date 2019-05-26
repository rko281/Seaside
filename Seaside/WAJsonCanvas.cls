"Filed out from Dolphin Smalltalk 7"!

WACanvas subclass: #WAJsonCanvas
	instanceVariableNames: 'first'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAJsonCanvas guid: (GUID fromString: '{c7a029bc-220d-4a6f-8f3a-9b386c3a3a02}')!
WAJsonCanvas comment: 'I am a  specific canvas to render JSON output.'!
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

scaledDecimal: aScaledDecimal	| converter |	converter := GRSignPrinter new, (GRNumberPrinter new precision: aScaledDecimal scale).	converter print: aScaledDecimal on: self document stream!

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
!WAJsonCanvas categoriesFor: #scaledDecimal:!double/disptach!public! !
!WAJsonCanvas categoriesFor: #string:!double/disptach!public! !
!WAJsonCanvas categoriesFor: #value:!public! !
!WAJsonCanvas categoriesFor: #writeIfNotFirst:!private! !

!WAJsonCanvas class methodsFor!

builder	^ (WABuilder on: self)		documentClass: WAJsonDocument;		yourself! !
!WAJsonCanvas class categoriesFor: #builder!instance creation!public! !

