"Filed out from Dolphin Smalltalk 7"!

WAPPathMatch subclass: #WAPlaceholderPathMatch
	instanceVariableNames: 'sourceIndex targetIndex'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPlaceholderPathMatch guid: (GUID fromString: '{fa599458-9cb8-4b5d-8be0-f472abaf6506}')!
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

