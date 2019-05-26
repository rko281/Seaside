"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WACallback
	instanceVariableNames: 'key'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACallback guid: (GUID fromString: '{ca04a16c-b6fa-4d4c-9b2c-a85973afefb1}')!
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
!WACallback categoriesFor: #<=!comparing!public! !
!WACallback categoriesFor: #block:!accessing!public! !
!WACallback categoriesFor: #convertKey:!converting!public! !
!WACallback categoriesFor: #evaluateWithArgument:!evaluation!public! !
!WACallback categoriesFor: #evaluateWithFieldValues:!evaluation!public! !
!WACallback categoriesFor: #isEnabledFor:!public!testing! !
!WACallback categoriesFor: #key!accessing!public! !
!WACallback categoriesFor: #priority!accessing!public! !
!WACallback categoriesFor: #setKey:callbacks:!initialization!public! !
!WACallback categoriesFor: #valueForField:!converting!public! !

!WACallback class methodsFor!

on: aBlock	^ self new block: aBlock! !
!WACallback class categoriesFor: #on:!instance creation!public! !

