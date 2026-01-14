"Filed out from Dolphin Smalltalk"!

WACanvas subclass: #JSJavascriptCanvas
	instanceVariableNames: 'first'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSJavascriptCanvas guid: (GUID fromString: '{526ae395-5525-4f32-9f8d-bfc7ca8bbe98}')!

JSJavascriptCanvas comment: 'I am a  specific canvas to render JSON output.'!

!JSJavascriptCanvas categoriesForClass!Javascript-Core-Base! !

!JSJavascriptCanvas methodsFor!

argument: aBlock	^ (self brush: JSJavascriptFunctionArgumentBrush new) with: aBlock!

arguments: aBlock	^ (self brush: JSJavascriptFunctionArgumentsBrush new) with: aBlock!

array: aBlock	^ (self brush: JSJavascriptArrayBrush new) with: aBlock!

assignment: aBlock	^ (self brush: JSJavascriptAssignmentBrush new) with: aBlock!

boolean: aBoolean	self document nextPutAll: (aBoolean ifTrue: [ 'true' ] ifFalse: [ 'false' ])!

bracketProperty: aStringOrInteger	self document openBracket.	self render: aStringOrInteger.	self document closeBracket!

defineFunction	^ self brush: (JSJavascriptFunctionDefinitionBrush new)!

defineFunction: aBlock	^ (self brush: (JSJavascriptFunctionDefinitionBrush new)) with: aBlock!

encodeURIComponent: anObject	self document encodeURIComponent.	self document nextPut: $(.	self render: anObject.	self document nextPut: $)!

function: aFunctionNameString	^ self brush: (JSJavascriptFunctionCallBrush name: aFunctionNameString)!

initializeWithContext: aRenderContext	super initializeWithContext: aRenderContext.	first := true!

javascript: aString	self document jscode: aString!

key: aKeyString value: aValueObject	^ (self brush: (JSJavascriptKeyValueBrush key: aKeyString)) with: aValueObject!

nest: aBlock	first := true.	super nest: aBlock.	first := false!

new: aString	^ self brush: (JSJavascriptConstructorCallBrush name: aString)!

nextPut: aCharacter 	self document nextPut: aCharacter!

null	self document nextPutAll: 'null'!

number: aNumber	aNumber printOn: self document stream!

object: aBlock	^ (self brush: JSJavasciptObjectBrush new) with: aBlock!

operator: aString 	^ self brush: (JSJavascriptOperatorBrush operator: aString)!

render: anObject	self flush.	anObject javascriptOn: self!

return: aBlock	^ (self brush: JSJavascriptReturnBrush new) with: aBlock!

scaledDecimal: aScaledDecimal	| converter |	converter := GRSignPrinter new, (GRNumberPrinter new precision: aScaledDecimal scale).	converter print: aScaledDecimal on: self document stream!

string: aString	self document string: aString!

value: aBlock	^ (self brush: JSJavascriptValueBrush new) with: aBlock!

writeCharacterIfNotFirst: aCharacter	first ifFalse: [		self document nextPut: aCharacter ]!

writeIfNotFirst: aString	first ifFalse: [		self document nextPutAll: aString ]! !

!JSJavascriptCanvas categoriesForMethods!
argument:!public! !
arguments:!public! !
array:!public! !
assignment:!public! !
boolean:!double/dispatch!public! !
bracketProperty:!public! !
defineFunction!public! !
defineFunction:!public! !
encodeURIComponent:!public! !
function:!public! !
initializeWithContext:!initialization!public! !
javascript:!public! !
key:value:!public! !
nest:!private! !
new:!public! !
nextPut:!public! !
null!double/dispatch!public! !
number:!double/dispatch!public! !
object:!public! !
operator:!public! !
render:!public! !
return:!public! !
scaledDecimal:!double/dispatch!public! !
string:!double/dispatch!public! !
value:!public! !
writeCharacterIfNotFirst:!private! !
writeIfNotFirst:!private! !
!

!JSJavascriptCanvas class methodsFor!

builder	^ (WABuilder on: self)		documentClass: JSJavascriptDocument;		yourself! !

!JSJavascriptCanvas class categoriesForMethods!
builder!instance creation!public! !
!

