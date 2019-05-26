"Filed out from Dolphin Smalltalk 7"!

JSObject subclass: #JQPlugin
	instanceVariableNames: 'owner options'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQPlugin guid: (GUID fromString: '{2979554e-210d-4e48-b8f3-a81371ffe6e0}')!
JQPlugin comment: ''!
!JQPlugin categoriesForClass!JQuery-Core-Objects! !
!JQPlugin methodsFor!

arguments	^ options isNil		ifTrue: [ Array new ]		ifFalse: [ Array with: options ]!

id: aString	self owner id: aString!

javascriptContentOn: aStream	aStream		javascript: self owner;		nextPut: $.;		nextPutAll: self method.	JSStream encodeArguments: self arguments on: aStream!

jQuery	^ (JQueryClass context: self renderContext)		rendererClass: self rendererClass;		yourself!

method	self subclassResponsibility!

optionAt: aKey put: aValue	^ self options at: aKey put: aValue!

options	^ options ifNil: [ options := GRSmallDictionary2 new ]!

owner	^ owner!

setOwner: aQuery	owner := aQuery! !
!JQPlugin categoriesFor: #arguments!accessing!public! !
!JQPlugin categoriesFor: #id:!private! !
!JQPlugin categoriesFor: #javascriptContentOn:!printing!public! !
!JQPlugin categoriesFor: #jQuery!private! !
!JQPlugin categoriesFor: #method!accessing!public! !
!JQPlugin categoriesFor: #optionAt:put:!options!public! !
!JQPlugin categoriesFor: #options!options!public! !
!JQPlugin categoriesFor: #owner!accessing!public! !
!JQPlugin categoriesFor: #setOwner:!initialization!public! !

!JQPlugin class methodsFor!

context: aRenderContext owner: aQuery	^ (self context: aRenderContext)		setOwner: aQuery;		yourself! !
!JQPlugin class categoriesFor: #context:owner:!instance creation!public! !

