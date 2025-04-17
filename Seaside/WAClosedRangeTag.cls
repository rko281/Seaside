"Filed out from Dolphin Smalltalk"!

WASteppedTag subclass: #WAClosedRangeTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAClosedRangeTag guid: (GUID fromString: '{2037acf6-d68e-4030-9c39-85d3148360d4}')!

WAClosedRangeTag comment: 'abstract class for all the elements that have a step, min and max attribute'!

!WAClosedRangeTag categoriesForClass!Tags! !

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

