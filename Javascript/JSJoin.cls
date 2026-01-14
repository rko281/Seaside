"Filed out from Dolphin Smalltalk"!

JSObject subclass: #JSJoin
	instanceVariableNames: 'collection'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSJoin guid: (GUID fromString: '{e3038059-9ac8-43e6-a99b-cb845ed67b53}')!

JSJoin comment: 'I join a collection of JavaScript statements with the given string.'!

!JSJoin categoriesForClass!Javascript-Core-Base! !

!JSJoin methodsFor!

collection	^ collection!

encodeAssociation: anAssociation on: aRenderer	| key value |	"key -> nil: ""key""	 key -> aString: ""key=aString(urlEncoded)""	key -> anObject: ""key=""+encodeURIComponent(anObject)"	key := anAssociation key.	value := anAssociation value.	aRenderer document		beginString		urlEncode: key greaseString.	value isNil ifTrue: [		aRenderer document endString.		^ self ].		aRenderer document nextPut: $=.	(value isString or: [ value isCharacter ]) ifTrue: [		aRenderer document				urlEncode: value greaseString;				endString	.		^ self ].	aRenderer document		endString;		operator: '+'.	aRenderer encodeURIComponent: value!

encodeElement: anObject on: aRenderer	(anObject isKindOf: Association)		ifTrue: [			self encodeAssociation: anObject on: aRenderer ]		ifFalse: [			"We assume that the element is already URL encoded if this is not an association."			aRenderer render: anObject ]!

encodeEmptyOn: aRenderer	aRenderer string: ''!

initializeOn: aCollection	self initialize.	collection := aCollection!

javascriptContentOn: aRenderer	self collection isEmpty		ifTrue: [ ^ self encodeEmptyOn: aRenderer ].	self collection size = 1		ifTrue: [ ^ self encodeElement: self collection first on: aRenderer ].	aRenderer array: [		self collection do: [ :each |			aRenderer value: [				self encodeElement: each on: aRenderer ] ] ].	(aRenderer document dotProperty: 'join').	aRenderer arguments: [ 		aRenderer string: '&' ]! !

!JSJoin categoriesForMethods!
collection!accessing!public! !
encodeAssociation:on:!encoding!public! !
encodeElement:on:!encoding!public! !
encodeEmptyOn:!encoding!public! !
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

