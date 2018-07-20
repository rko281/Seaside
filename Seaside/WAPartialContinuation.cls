"Filed out from Dolphin Smalltalk 7"!

PartialContinuation subclass: #WAPartialContinuation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPartialContinuation guid: (GUID fromString: '{6c443a11-1cec-4600-b678-b9d2810ce838}')!
WAPartialContinuation comment: ''!
!WAPartialContinuation categoriesForClass!Unclassified! !
!WAPartialContinuation methodsFor!

valueWithPossibleArguments: anArray 
	^self value: anArray first.! !
!WAPartialContinuation categoriesFor: #valueWithPossibleArguments:!pharo!public! !

!WAPartialContinuation class methodsFor!

markerNotFound

	WAMarkerNotFound signal: 'Marker not found when capturing partial continuation.' !

markerRequest

	^WAMarkerRequest! !
!WAPartialContinuation class categoriesFor: #markerNotFound!public! !
!WAPartialContinuation class categoriesFor: #markerRequest!public! !

