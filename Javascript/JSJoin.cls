"Filed out from Dolphin Smalltalk"!

JSObject subclass: #JSJoin
	instanceVariableNames: 'collection'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSJoin guid: (GUID fromString: '{b2483a6f-00cd-44f1-bb36-e67a85eb43b3}')!

JSJoin comment: 'I join a collection of JavaScript statements with the given string.'!

!JSJoin categoriesForClass!Base! !

!JSJoin methodsFor!

collection	^ collection!

encodeElement: anObject on: aDocument	"We assume that the element is already URL encoded if this is not an association."	(anObject isKindOf: Association)		ifTrue: [			aDocument nextPut: $".			aDocument urlEncoder				nextPutAll: anObject key greaseString.			anObject value isNil 				ifTrue: [ aDocument nextPut: $" ]				ifFalse: [					aDocument nextPut: $=.					(anObject value isString or: [ anObject value isCharacter ])						ifTrue: [							aDocument urlEncoder 								nextPutAll: anObject value greaseString.							aDocument nextPut: $" ]						ifFalse: [							aDocument nextPutAll: '"+encodeURIComponent('.							aDocument stream javascript: anObject value.							aDocument nextPut: $) ] ] ]		ifFalse: [ aDocument stream javascript: anObject ]!

encodeEmptyOn: aDocument	aDocument nextPutAll: '""'!

encodeOn: aDocument	self collection isEmpty		ifTrue: [ ^ self encodeEmptyOn: aDocument ].	self collection size = 1		ifTrue: [ ^ self encodeElement: self collection first on: aDocument ].	aDocument nextPut: $[.	self collection		do: [ :each | self encodeElement: each on: aDocument ]		separatedBy: [ aDocument nextPut: $, ].	aDocument nextPutAll: '].join("&")'!

initializeOn: aCollection	self initialize.	collection := aCollection!

javascriptContentOn: aStream	| document codec |	codec := [ self requestContext codec ] 		on: WARequestContextNotFound		do: [ :e | GRNullCodec new ].	document := WAUnescapedDocument 		on: aStream		codec: codec.	self encodeOn: document! !

!JSJoin categoriesForMethods!
collection!accessing!public! !
encodeElement:on:!encoding!public! !
encodeEmptyOn:!encoding!public! !
encodeOn:!encoding!public! !
initializeOn:!initialization!public! !
javascriptContentOn:!printing!public! !
!

!JSJoin class methodsFor!

new	^ self on: OrderedCollection new!

on: aCollection	^ self basicNew initializeOn: aCollection! !

!JSJoin class categoriesForMethods!
new!instance creation!public! !
on:!instance creation!public! !
!

