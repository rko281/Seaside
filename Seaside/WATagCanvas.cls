"Filed out from Dolphin Smalltalk 7"!

WACanvas subclass: #WATagCanvas
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATagCanvas guid: (GUID fromString: '{a4ba5f1b-1509-46d7-88f2-7be95cb717ca}')!
WATagCanvas comment: 'I am the abstract superclass for tag based canvases.'!
!WATagCanvas categoriesForClass!Seaside-Canvas-Canvas! !
!WATagCanvas methodsFor!

break	self subclassResponsibility !

space	self flush.	self document nextPutAll: self spaceEntity!

space: anInteger	anInteger timesRepeat: [ self space ]!

spaceEntity	self subclassResponsibility !

tag: aString	"Defines a generic tag with the name aString."	^ self brush: (WAGenericTag tag: aString)!

tag: aString with: aBlock	(self tag: aString) with: aBlock!

withLineBreaks: aString	"Renders text preserving line breaks."	| stream |	stream := aString readStream.	[ stream atEnd ] whileFalse: [		self text: stream nextLine.		stream atEnd ifFalse: [ self break ] ]! !
!WATagCanvas categoriesFor: #break!private! !
!WATagCanvas categoriesFor: #space!convenience!public! !
!WATagCanvas categoriesFor: #space:!convenience!public! !
!WATagCanvas categoriesFor: #spaceEntity!private! !
!WATagCanvas categoriesFor: #tag:!public! !
!WATagCanvas categoriesFor: #tag:with:!public! !
!WATagCanvas categoriesFor: #withLineBreaks:!convenience!public! !

