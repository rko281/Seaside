"Filed out from Dolphin Smalltalk 7"!

WABrush subclass: #WAJsonBrush
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAJsonBrush guid: (GUID fromString: '{ca5587bb-3188-4da2-9060-d2eb3d709809}')!
WAJsonBrush comment: ''!
!WAJsonBrush categoriesForClass!Seaside-JSON-Core! !
!WAJsonBrush methodsFor!

closeBrush	self subclassResponsibility!

document	^ canvas document!

openBrush	self subclassResponsibility!

with: anObject	self openBrush.	super with: [		canvas render: anObject ].	self closeBrush! !
!WAJsonBrush categoriesFor: #closeBrush!private! !
!WAJsonBrush categoriesFor: #document!accessing!public! !
!WAJsonBrush categoriesFor: #openBrush!private! !
!WAJsonBrush categoriesFor: #with:!public! !

