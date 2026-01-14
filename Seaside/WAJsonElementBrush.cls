"Filed out from Dolphin Smalltalk"!

WAJsonBrush subclass: #WAJsonElementBrush
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAJsonElementBrush guid: (GUID fromString: '{ae073c46-2d9a-4abb-9915-03df7aa6423a}')!

WAJsonElementBrush comment: 'Abstract superclass for JSON elements'!

!WAJsonElementBrush categoriesForClass!Seaside-JSON-Core-Brushes! !

!WAJsonElementBrush methodsFor!

closeBrush!

openBrush	canvas writeIfNotFirst: ', '! !

!WAJsonElementBrush categoriesForMethods!
closeBrush!private! !
openBrush!private! !
!

!WAJsonElementBrush class methodsFor!

isAbstract 	^ self == WAJsonElementBrush! !

!WAJsonElementBrush class categoriesForMethods!
isAbstract!public!testing! !
!

