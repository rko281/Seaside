"Filed out from Dolphin Smalltalk"!

JSObject subclass: #JQPlugin
	instanceVariableNames: 'owner options'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQPlugin guid: (GUID fromString: '{31f137a2-6c7f-42b0-8b92-425c7f2774d6}')!

JQPlugin comment: ''!

!JQPlugin categoriesForClass!Objects! !

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

!JQPlugin categoriesForMethods!
arguments!accessing!public! !
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

