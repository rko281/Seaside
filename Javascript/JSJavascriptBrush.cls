"Filed out from Dolphin Smalltalk"!

WABrush subclass: #JSJavascriptBrush
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSJavascriptBrush guid: (GUID fromString: '{38589d75-761a-441e-804e-92a4abe40944}')!

JSJavascriptBrush comment: 'A brush to generate JSON'!

!JSJavascriptBrush categoriesForClass!Javascript-Core-Brushes! !

!JSJavascriptBrush methodsFor!

closeBrush	self subclassResponsibility!

document	^ canvas document!

openBrush	self subclassResponsibility!

with: anObject	self openBrush.	super with: [		canvas render: anObject ].	self closeBrush! !

!JSJavascriptBrush categoriesForMethods!
closeBrush!private! !
document!accessing!public! !
openBrush!private! !
with:!public! !
!

!JSJavascriptBrush class methodsFor!

isAbstract 	^ self == JSJavascriptBrush! !

!JSJavascriptBrush class categoriesForMethods!
isAbstract!public!testing! !
!

