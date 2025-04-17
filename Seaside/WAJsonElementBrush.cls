"Filed out from Dolphin Smalltalk"!

WAJsonBrush subclass: #WAJsonElementBrush
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAJsonElementBrush guid: (GUID fromString: '{257a7bae-2012-410e-80a2-237c92ae9620}')!

WAJsonElementBrush comment: 'Abstract superclass for JSON elements'!

!WAJsonElementBrush categoriesForClass!Brushes! !

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

