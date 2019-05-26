"Filed out from Dolphin Smalltalk 7"!

WABrush subclass: #WAJsonBrush
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAJsonBrush guid: (GUID fromString: '{68fd988a-7d88-4eb8-9a79-d44bcb441375}')!
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

