"Filed out from Dolphin Smalltalk 7"!

JSObject subclass: #JSJoin
	instanceVariableNames: 'collection'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSJoin guid: (GUID fromString: '{e3e2c714-35d9-465c-bb3e-301e86716743}')!
JSJoin comment: 'I join a collection of JavaScript statements with the given string.'!
!JSJoin categoriesForClass!Javascript-Core! !
!JSJoin methodsFor!

collection	^ collection!

encodeElement: anObject on: aDocument	"We assume that the element is already URL encoded if this is not an association."	(anObject isKindOf: Association)		ifTrue: [			aDocument nextPut: $".			aDocument urlEncoder				nextPutAll: anObject key greaseString.			anObject value isNil 				ifTrue: [ aDocument nextPut: $" ]				ifFalse: [					aDocument nextPut: $=.					(anObject value isString or: [ anObject value isCharacter ])						ifTrue: [							aDocument urlEncoder 								nextPutAll: anObject value greaseString.							aDocument nextPut: $" ]						ifFalse: [							aDocument nextPutAll: '"+encodeURIComponent('.							aDocument stream javascript: anObject value.							aDocument nextPut: $) ] ] ]		ifFalse: [ aDocument stream javascript: anObject ]!

encodeEmptyOn: aDocument	aDocument nextPutAll: '""'!

encodeOn: aDocument	self collection isEmpty		ifTrue: [ ^ self encodeEmptyOn: aDocument ].	self collection size = 1		ifTrue: [ ^ self encodeElement: self collection first on: aDocument ].	aDocument nextPut: $[.	self collection		do: [ :each | self encodeElement: each on: aDocument ]		separatedBy: [ aDocument nextPut: $, ].	aDocument nextPutAll: '].join("&")'!

initializeOn: aCollection	self initialize.	collection := aCollection!

javascriptContentOn: aStream	| document codec |	codec := [ self requestContext codec ] 		on: WARequestContextNotFound		do: [ :e | GRNullCodec new ].	document := WAUnescapedDocument 		on: aStream		codec: codec.	self encodeOn: document! !
!JSJoin categoriesFor: #collection!accessing!public! !
!JSJoin categoriesFor: #encodeElement:on:!encoding!public! !
!JSJoin categoriesFor: #encodeEmptyOn:!encoding!public! !
!JSJoin categoriesFor: #encodeOn:!encoding!public! !
!JSJoin categoriesFor: #initializeOn:!initialization!public! !
!JSJoin categoriesFor: #javascriptContentOn:!printing!public! !

!JSJoin class methodsFor!

new	^ self on: OrderedCollection new!

on: aCollection	^ self basicNew initializeOn: aCollection! !
!JSJoin class categoriesFor: #new!instance creation!public! !
!JSJoin class categoriesFor: #on:!instance creation!public! !

