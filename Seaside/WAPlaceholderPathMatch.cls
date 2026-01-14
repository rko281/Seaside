"Filed out from Dolphin Smalltalk"!

WAPPathMatch subclass: #WAPlaceholderPathMatch
	instanceVariableNames: 'sourceIndex targetIndex'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPlaceholderPathMatch guid: (GUID fromString: '{c701bac4-c1d1-442c-8863-11548bc49c13}')!

WAPlaceholderPathMatch comment: ''!

!WAPlaceholderPathMatch categoriesForClass!Seaside-REST-Core-Route! !

!WAPlaceholderPathMatch methodsFor!

argumentCount	^ 1!

initializeWithSourceIndex: anFirstInteger targetIndex: aSecondInteger	self initialize.	sourceIndex := anFirstInteger.	targetIndex := aSecondInteger!

sourceIndex	^ sourceIndex!

targetIndex	^ targetIndex! !

!WAPlaceholderPathMatch categoriesForMethods!
argumentCount!accessing!public! !
initializeWithSourceIndex:targetIndex:!initialization!public! !
sourceIndex!accessing!public! !
targetIndex!accessing!public! !
!

