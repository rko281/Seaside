"Filed out from Dolphin Smalltalk"!

WABrush subclass: #WAJsonBrush
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAJsonBrush guid: (GUID fromString: '{4918c47f-3a53-4e4c-af78-27a5af22c5d5}')!

WAJsonBrush comment: 'A brush to generate JSON'!

!WAJsonBrush categoriesForClass!Seaside-JSON-Core-Brushes! !

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

