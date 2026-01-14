"Filed out from Dolphin Smalltalk"!

JSObject subclass: #JQPlugin
	instanceVariableNames: 'owner options'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQPlugin guid: (GUID fromString: '{5cfa0546-bbc5-4afd-9d84-60a5b41b35ee}')!

JQPlugin comment: ''!

!JQPlugin categoriesForClass!JQuery-Core-Objects! !

!JQPlugin methodsFor!

arguments	^ Array streamContents: [ :stream |		self argumentsDo: [ :each |			stream nextPut: each ] ]!

argumentsDo: aBlock	options isNil ifFalse: [ 		aBlock value: options ]!

id: aString	self owner id: aString!

javascriptContentOn: aRenderer	aRenderer render: self owner.	aRenderer document dotProperty: self method.	aRenderer arguments: [		self argumentsDo: [ :each |			 aRenderer argument: each ] ]!

jQuery	^ (JQueryClass context: self renderContext)		rendererClass: self rendererClass;		yourself!

method	self subclassResponsibility!

optionAt: aKey put: aValue	^ self options at: aKey put: aValue!

options	^ options ifNil: [ options := GRSmallDictionary2 new ]!

owner	^ owner!

setOwner: aQuery	owner := aQuery! !

!JQPlugin categoriesForMethods!
arguments!accessing!public! !
argumentsDo:!accessing!public! !
id:!private! !
javascriptContentOn:!printing!public! !
jQuery!private! !
method!accessing!public! !
optionAt:put:!options!public! !
options!options!public! !
owner!accessing!public! !
setOwner:!initialization!public! !
!

!JQPlugin class methodsFor!

context: aRenderContext owner: aQuery	^ (self context: aRenderContext)		setOwner: aQuery;		yourself! !

!JQPlugin class categoriesForMethods!
context:owner:!instance creation!public! !
!

