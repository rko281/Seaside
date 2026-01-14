"Filed out from Dolphin Smalltalk"!

WASteppedTag subclass: #WAClosedRangeTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAClosedRangeTag guid: (GUID fromString: '{dfd0b9f5-3c73-442f-987e-006344c7537a}')!

WAClosedRangeTag comment: 'abstract class for all the elements that have a step, min and max attribute'!

!WAClosedRangeTag categoriesForClass!Seaside-Canvas-Tags! !

!WAClosedRangeTag methodsFor!

max: anInteger	self attributeAt: 'max' put: anInteger!

min: anInteger	self attributeAt: 'min' put: anInteger! !

!WAClosedRangeTag categoriesForMethods!
max:!attributes!public! !
min:!attributes!public! !
!

!WAClosedRangeTag class methodsFor!

isAbstract 	^ self == WAClosedRangeTag! !

!WAClosedRangeTag class categoriesForMethods!
isAbstract!public!testing! !
!

