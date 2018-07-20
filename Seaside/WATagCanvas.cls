"Filed out from Dolphin Smalltalk 7"!

WACanvas subclass: #WATagCanvas
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATagCanvas guid: (GUID fromString: '{ba5831ce-924d-4811-9cc7-d0ad66092a48}')!
WATagCanvas comment: ''!
!WATagCanvas categoriesForClass!Seaside-Canvas! !
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

