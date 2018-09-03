"Filed out from Dolphin Smalltalk 7"!

WAPPathMatch subclass: #WAPlaceholderPathMatch
	instanceVariableNames: 'sourceIndex targetIndex'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPlaceholderPathMatch guid: (GUID fromString: '{a342e1af-c7a4-4834-9979-6fa417754638}')!
WAPlaceholderPathMatch comment: ''!
!WAPlaceholderPathMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAPlaceholderPathMatch methodsFor!

argumentCount	^ 1!

initializeWithSourceIndex: anFirstInteger targetIndex: aSecondInteger	self initialize.	sourceIndex := anFirstInteger.	targetIndex := aSecondInteger!

sourceIndex	^ sourceIndex!

targetIndex	^ targetIndex! !
!WAPlaceholderPathMatch categoriesFor: #argumentCount!accessing!public! !
!WAPlaceholderPathMatch categoriesFor: #initializeWithSourceIndex:targetIndex:!initialization!public! !
!WAPlaceholderPathMatch categoriesFor: #sourceIndex!accessing!public! !
!WAPlaceholderPathMatch categoriesFor: #targetIndex!accessing!public! !

