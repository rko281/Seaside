"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WACallback
	instanceVariableNames: 'key'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACallback guid: (GUID fromString: '{222bef88-52cc-4aa4-a4fc-ce342d22de78}')!

WACallback comment: ''!

!WACallback categoriesForClass!Seaside-Core-Callbacks! !

!WACallback methodsFor!

<= other	^ self priority < other priority or: [ self priority = other priority and: [ self key asNumber <= other key asNumber ] ]!

block: aBlock!

convertKey: aString	^ aString!

evaluateWithArgument: anObject	self subclassResponsibility!

evaluateWithFieldValues: anOrderedCollection	self evaluateWithArgument: (self valueForField: (anOrderedCollection at: 1 ifAbsent: [ nil ]))!

isEnabledFor: aRequestContext	^ true!

key	"Answer the callback key of the receiver."		^ self convertKey: key!

priority	"Answer the priority in which the receiver is evaluated."		^ 0!

setKey: aString callbacks: aDictionary	key := aString!

valueForField: anObject	"Answer the value that should be used when the field value in the Request	is anObject. This allows subclasses to specify a default value other than	nil, for example."	^ anObject! !

!WACallback categoriesForMethods!
<=!comparing!public! !
block:!accessing!public! !
convertKey:!converting!public! !
evaluateWithArgument:!evaluation!public! !
evaluateWithFieldValues:!evaluation!public! !
isEnabledFor:!public!testing! !
key!accessing!public! !
priority!accessing!public! !
setKey:callbacks:!initialization!public! !
valueForField:!converting!public! !
!

!WACallback class methodsFor!

on: aBlock	^ self new block: aBlock! !

!WACallback class categoriesForMethods!
on:!instance creation!public! !
!

