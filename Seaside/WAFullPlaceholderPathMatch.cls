"Filed out from Dolphin Smalltalk"!

WAPlaceholderPathMatch subclass: #WAFullPlaceholderPathMatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFullPlaceholderPathMatch guid: (GUID fromString: '{3d33bafa-6bfc-47a6-aaa4-aba0977e0815}')!

WAFullPlaceholderPathMatch comment: ''!

!WAFullPlaceholderPathMatch categoriesForClass!Seaside-REST-Core-Route! !

!WAFullPlaceholderPathMatch methodsFor!

mapArgumentsWithElements: aCollection into: anArray usingOffset: anInteger	anArray		at: targetIndex		put: (aCollection at: sourceIndex + anInteger)!

matches: aString	^ true!

priority	^ 2! !

!WAFullPlaceholderPathMatch categoriesForMethods!
mapArgumentsWithElements:into:usingOffset:!public! !
matches:!public!testing! !
priority!accessing!public! !
!

!WAFullPlaceholderPathMatch class methodsFor!

fromString: aString index: anInteger arguments: aCollectionOfStrings	^ self		source: anInteger		target: (self			targetIndexOf: (aString copyFrom: 2 to: aString size - 1)			arguments: aCollectionOfStrings)!

source: anFirstInteger target: aSecondInteger	^ self basicNew initializeWithSourceIndex: anFirstInteger targetIndex: aSecondInteger! !

!WAFullPlaceholderPathMatch class categoriesForMethods!
fromString:index:arguments:!instance creation!public! !
source:target:!instance creation!public! !
!

