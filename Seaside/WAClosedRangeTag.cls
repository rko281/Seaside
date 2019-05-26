"Filed out from Dolphin Smalltalk 7"!

WASteppedTag subclass: #WAClosedRangeTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAClosedRangeTag guid: (GUID fromString: '{4497fa4f-e6e3-469f-b329-6debdf247988}')!
WAClosedRangeTag comment: 'abstract class for all the elements that have a step, min and max attribute'!
!WAClosedRangeTag categoriesForClass!Seaside-Canvas-Tags! !
!WAClosedRangeTag methodsFor!

max: anInteger	self attributeAt: 'max' put: anInteger!

min: anInteger	self attributeAt: 'min' put: anInteger! !
!WAClosedRangeTag categoriesFor: #max:!attributes!public! !
!WAClosedRangeTag categoriesFor: #min:!attributes!public! !

