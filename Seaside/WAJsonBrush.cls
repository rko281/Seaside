"Filed out from Dolphin Smalltalk"!

WABrush subclass: #WAJsonBrush
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAJsonBrush guid: (GUID fromString: '{9ac4acba-4def-4309-ba6f-1a5236d1cd19}')!

WAJsonBrush comment: 'A brush to generate JSON'!

!WAJsonBrush categoriesForClass!Brushes! !

!WAJsonBrush methodsFor!

closeBrush	self subclassResponsibility!

document	^ canvas document!

openBrush	self subclassResponsibility!

with: anObject	self openBrush.	super with: [		canvas render: anObject ].	self closeBrush! !

!WAJsonBrush categoriesForMethods!
closeBrush!private! !
document!accessing!public! !
openBrush!private! !
with:!public! !
!

!WAJsonBrush class methodsFor!

isAbstract 	^ self == WAJsonBrush! !

!WAJsonBrush class categoriesForMethods!
isAbstract!public!testing! !
!

