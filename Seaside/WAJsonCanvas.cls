"Filed out from Dolphin Smalltalk"!

WACanvas subclass: #WAJsonCanvas
	instanceVariableNames: 'first'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAJsonCanvas guid: (GUID fromString: '{af387abe-6ac1-4bf7-a78f-fe3dd7f69ad9}')!

WAJsonCanvas comment: 'I am a  specific canvas to render JSON output.'!

!WAJsonCanvas categoriesForClass!Seaside-JSON-Core-Base! !

!WAJsonCanvas methodsFor!

array: aBlock	^ (self brush: WAJsonArrayBrush new) with: aBlock!

boolean: aBoolean	self document stream nextPutAll: (aBoolean ifTrue: [ 'true' ] ifFalse: [ 'false' ])!

dateAndTime: aDateAndTime	" Note: date and time is not standard json. So we use the ISO 8601 standard here. We convert to string to make it valid json "	self document stream nextPut: $".	aDateAndTime printOn: self document stream withLeadingSpace: false. "Dolphin modified"	self document stream nextPut: $"!

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

!WAJsonCanvas categoriesForMethods!
array:!public! !
boolean:!double/dispatch!public! !
dateAndTime:!dolphin seaside patches!double/dispatch!public! !
initializeWithContext:!initialization!public! !
key:value:!public! !
nest:!private! !
nextPut:!public! !
null!double/dispatch!public! !
number:!double/dispatch!public! !
object:!public! !
render:!public! !
scaledDecimal:!double/dispatch!public! !
string:!double/dispatch!public! !
value:!public! !
writeIfNotFirst:!private! !
!

!WAJsonCanvas class methodsFor!

builder	^ (WABuilder on: self)		documentClass: WAJsonDocument;		yourself! !

!WAJsonCanvas class categoriesForMethods!
builder!instance creation!public! !
!

