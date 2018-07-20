"Filed out from Dolphin Smalltalk 7"!

WASteppedTag subclass: #WAClosedRangeTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAClosedRangeTag guid: (GUID fromString: '{545c3f66-ade9-4406-b405-1b761e199f95}')!
WAClosedRangeTag comment: 'abstract class for all the elements that have a step, min and max attribute'!
!WAClosedRangeTag categoriesForClass!Seaside-Canvas-Tags! !
!WAClosedRangeTag methodsFor!

max: anInteger	self attributeAt: 'max' put: anInteger!

min: anInteger	self attributeAt: 'min' put: anInteger! !
!WAClosedRangeTag categoriesFor: #max:!attributes!public! !
!WAClosedRangeTag categoriesFor: #min:!attributes!public! !

