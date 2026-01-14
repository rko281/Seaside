"Filed out from Dolphin Smalltalk"!

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

!WAPartialContinuation categoriesForMethods!
valueWithPossibleArguments:!pharo!public! !
!

!WAPartialContinuation class methodsFor!

markerNotFound

	WAMarkerNotFound signal: 'Marker not found when capturing partial continuation.' !

markerRequest

	^WAMarkerRequest! !

!WAPartialContinuation class categoriesForMethods!
markerNotFound!public! !
markerRequest!public! !
!

