"Filed out from Dolphin Smalltalk"!

WAAbstractTextAreaTag subclass: #WASteppedTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASteppedTag guid: (GUID fromString: '{d84f10cd-2b10-49ed-b49c-5f5c58452d70}')!

WASteppedTag comment: 'Common superclass for step related tags'!

!WASteppedTag categoriesForClass!Seaside-Canvas-Tags! !

!WASteppedTag methodsFor!

step: anInteger	self attributeAt: 'step' put: anInteger! !

!WASteppedTag categoriesForMethods!
step:!attributes!public! !
!

!WASteppedTag class methodsFor!

isAbstract 	^ self == WASteppedTag! !

!WASteppedTag class categoriesForMethods!
isAbstract!public!testing! !
!

