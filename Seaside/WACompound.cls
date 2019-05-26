"Filed out from Dolphin Smalltalk 7"!

WABrush subclass: #WACompound
	instanceVariableNames: 'callbackBlock value id properties'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACompound guid: (GUID fromString: '{b53c7c95-5f6c-4911-9830-2c756881e263}')!
WACompound comment: 'I am the superclass for stuff that is not html element but you still want to access via the canvas API.'!
!WACompound categoriesForClass!Seaside-Canvas-Tags! !
!WACompound methodsFor!

addCallback	self subclassResponsibility!

callback: aBlock	callbackBlock := aBlock!

close	closed ifTrue: [ ^ self ].	closed := true.	self with: nil!

hasCallback	^ callbackBlock notNil!

id	^ id!

id: aString	id := aString!

initialize	super initialize.	"do not remove properties, it is used by SeasideAsync"	properties := Dictionary new!

on: aSelector of: anObject 	self value: (anObject perform: aSelector).	self callback: (GRDelayedSend 			receiver: anObject			selector: aSelector asMutator)!

value	^ value!

value: aValue	value := aValue!

with: anObject	anObject isNil		ifFalse: [ value := anObject ].	closed := true! !
!WACompound categoriesFor: #addCallback!private! !
!WACompound categoriesFor: #callback:!callbacks!public! !
!WACompound categoriesFor: #close!public! !
!WACompound categoriesFor: #hasCallback!public!testing! !
!WACompound categoriesFor: #id!accessing!public! !
!WACompound categoriesFor: #id:!accessing!public! !
!WACompound categoriesFor: #initialize!initialization!public! !
!WACompound categoriesFor: #on:of:!callbacks!public! !
!WACompound categoriesFor: #value!accessing!public! !
!WACompound categoriesFor: #value:!accessing!public! !
!WACompound categoriesFor: #with:!public! !

