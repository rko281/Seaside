"Filed out from Dolphin Smalltalk"!

WAPlaceholderPathMatch subclass: #WAFullPlaceholderPathMatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFullPlaceholderPathMatch guid: (GUID fromString: '{a6046916-8d08-42ca-83e9-ae695af7a9a7}')!

WAFullPlaceholderPathMatch comment: ''!

!WAFullPlaceholderPathMatch categoriesForClass!Route! !

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

