"Filed out from Dolphin Smalltalk"!

WACanvas subclass: #WATagCanvas
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATagCanvas guid: (GUID fromString: '{ed1b719c-66a4-4343-be26-f3998d556b37}')!

WATagCanvas comment: 'I am the abstract superclass for tag based canvases.'!

!WATagCanvas categoriesForClass!Canvas! !

!WATagCanvas methodsFor!

break	self subclassResponsibility!

space	self flush.	self document nextPutAll: self spaceEntity!

space: anInteger	anInteger timesRepeat: [ self space ]!

spaceEntity	self subclassResponsibility!

tag: aString	"Defines a generic tag with the name aString."	^ self brush: (WAGenericTag tag: aString)!

tag: aString with: aBlock	(self tag: aString) with: aBlock!

withLineBreaks: aString	"Renders text preserving line breaks."	| stream |	stream := aString readStream.	[ stream atEnd ] whileFalse: [		self text: stream nextLine.		stream atEnd ifFalse: [ self break ] ]! !

!WATagCanvas categoriesForMethods!
break!private! !
space!convenience!public! !
space:!convenience!public! !
spaceEntity!private! !
tag:!public! !
tag:with:!public! !
withLineBreaks:!convenience!public! !
!

!WATagCanvas class methodsFor!

isAbstract 	^ self == WATagCanvas! !

!WATagCanvas class categoriesForMethods!
isAbstract!public!testing! !
!

