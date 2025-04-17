"Filed out from Dolphin Smalltalk"!

WABrush subclass: #WACompound
	instanceVariableNames: 'callbackBlock value id properties'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACompound guid: (GUID fromString: '{7f5d1743-bd52-4dd5-be32-aadd9e4ab0cc}')!

WACompound comment: 'I am the superclass for stuff that is not html element but you still want to access via the canvas API.'!

!WACompound categoriesForClass!Tags! !

!WACompound methodsFor!

addCallback	self subclassResponsibility!

callback: aBlock	callbackBlock := aBlock!

close	closed ifTrue: [ ^ self ].	closed := true.	self with: nil!

hasCallback	^ callbackBlock notNil!

id	^ id!

id: aString	id := aString!

initialize	super initialize.	"do not remove properties, it is used by SeasideAsync"	properties := Dictionary new!

on: aSelector of: anObject 	self value: (anObject perform: aSelector).	self callback: (GRDelayedSend 			receiver: anObject			selector: aSelector greaseAsMutator)!

value	^ value!

value: aValue	value := aValue!

with: anObject	anObject isNil		ifFalse: [ value := anObject ].	closed := true! !

!WACompound categoriesForMethods!
addCallback!private! !
callback:!callbacks!public! !
close!public! !
hasCallback!public!testing! !
id!accessing!public! !
id:!accessing!public! !
initialize!initialization!public! !
on:of:!callbacks!public! !
value!accessing!public! !
value:!accessing!public! !
with:!public! !
!

!WACompound class methodsFor!

isAbstract 	^ self == WACompound! !

!WACompound class categoriesForMethods!
isAbstract!public!testing! !
!

