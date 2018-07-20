"Filed out from Dolphin Smalltalk 7"!

WARenderer subclass: #WACanvas
	instanceVariableNames: 'currentBrush parentBrush'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACanvas guid: (GUID fromString: '{406fb139-8254-4d08-b11b-0d0228e29311}')!
WACanvas comment: 'This is the superclass of all canvas. It''s a rendering interface that generates brushes (see WABrush).Subclass WAXmlCanvas, if you want to generate an XML dialect.'!
!WACanvas categoriesForClass!Seaside-Canvas! !
!WACanvas methodsFor!

brush: aBrush	self flush.	currentBrush := aBrush.	aBrush setParent: parentBrush canvas: self.	^ aBrush!

flush	super flush.	currentBrush isNil		ifTrue: [ ^ self ].	currentBrush close.	currentBrush := nil!

insert: aBlock	| oldBrush |	oldBrush := currentBrush.	currentBrush := nil.	aBlock value.	self flush.	currentBrush := oldBrush!

nest: aBlock	parentBrush := currentBrush.	currentBrush := nil.	self render: aBlock.	self flush.	parentBrush := parentBrush parent!

render: anObject	self flush.	super render: anObject!

text: anObject	self flush.	super text: anObject! !
!WACanvas categoriesFor: #brush:!public! !
!WACanvas categoriesFor: #flush!private! !
!WACanvas categoriesFor: #insert:!private! !
!WACanvas categoriesFor: #nest:!private! !
!WACanvas categoriesFor: #render:!public! !
!WACanvas categoriesFor: #text:!public! !

