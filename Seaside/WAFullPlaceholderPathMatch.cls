"Filed out from Dolphin Smalltalk 7"!

WAPlaceholderPathMatch subclass: #WAFullPlaceholderPathMatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFullPlaceholderPathMatch guid: (GUID fromString: '{92bc5594-cc65-4272-95a7-c7ae0436a1e6}')!
WAFullPlaceholderPathMatch comment: ''!
!WAFullPlaceholderPathMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAFullPlaceholderPathMatch methodsFor!

mapArgumentsWithElements: aCollection into: anArray usingOffset: anInteger	anArray		at: targetIndex		put: (aCollection at: sourceIndex + anInteger)!

matches: aString	^ true!

priority	^ 2! !
!WAFullPlaceholderPathMatch categoriesFor: #mapArgumentsWithElements:into:usingOffset:!public! !
!WAFullPlaceholderPathMatch categoriesFor: #matches:!public!testing! !
!WAFullPlaceholderPathMatch categoriesFor: #priority!accessing!public! !

!WAFullPlaceholderPathMatch class methodsFor!

fromString: aString index: anInteger arguments: aCollectionOfStrings	^ self		source: anInteger		target: (self			targetIndexOf: (aString copyFrom: 2 to: aString size - 1)			arguments: aCollectionOfStrings)!

source: anFirstInteger target: aSecondInteger	^ self basicNew initializeWithSourceIndex: anFirstInteger targetIndex: aSecondInteger! !
!WAFullPlaceholderPathMatch class categoriesFor: #fromString:index:arguments:!instance creation!public! !
!WAFullPlaceholderPathMatch class categoriesFor: #source:target:!instance creation!public! !

