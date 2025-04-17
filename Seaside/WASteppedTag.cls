"Filed out from Dolphin Smalltalk"!

WAAbstractTextAreaTag subclass: #WASteppedTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASteppedTag guid: (GUID fromString: '{1c2c2a64-25b6-4384-98d1-8af8b4f5f9b3}')!

WASteppedTag comment: 'Common superclass for step related tags'!

!WASteppedTag categoriesForClass!Tags! !

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

