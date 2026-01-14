"Filed out from Dolphin Smalltalk"!

WARenderer subclass: #WACanvas
	instanceVariableNames: 'currentBrush parentBrush'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACanvas guid: (GUID fromString: '{0cb60f87-be3c-4ffa-9897-ecae34ccea0d}')!

WACanvas comment: 'This is the superclass of all canvas. It''s a rendering interface that generates brushes (see WABrush).Subclass WAXmlCanvas, if you want to generate an XML dialect.'!

!WACanvas categoriesForClass!Seaside-Canvas-Canvas! !

!WACanvas methodsFor!

brush: aBrush	self flush.	currentBrush := aBrush.	aBrush setParent: parentBrush canvas: self.	^ aBrush!

flush	super flush.	currentBrush isNil		ifTrue: [ ^ self ].	currentBrush close.	currentBrush := nil!

insert: aBlock	| oldBrush |	oldBrush := currentBrush.	currentBrush := nil.	aBlock value.	self flush.	currentBrush := oldBrush!

nest: aBlock	parentBrush := currentBrush.	currentBrush := nil.	self render: aBlock.	self flush.	parentBrush := parentBrush parent!

render: anObject	self flush.	super render: anObject!

text: anObject	self flush.	super text: anObject! !

!WACanvas categoriesForMethods!
brush:!public! !
flush!private! !
insert:!private! !
nest:!private! !
render:!public! !
text:!public! !
!

!WACanvas class methodsFor!

isAbstract 	^ self == WACanvas! !

!WACanvas class categoriesForMethods!
isAbstract!public!testing! !
!

