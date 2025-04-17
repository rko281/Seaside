"Filed out from Dolphin Smalltalk"!

WAPPathMatch subclass: #WAPlaceholderPathMatch
	instanceVariableNames: 'sourceIndex targetIndex'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPlaceholderPathMatch guid: (GUID fromString: '{b3b86e5e-3727-47b1-a2c8-5198f8836555}')!

WAPlaceholderPathMatch comment: ''!

!WAPlaceholderPathMatch categoriesForClass!Route! !

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

