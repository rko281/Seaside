"Filed out from Dolphin Smalltalk"!

WAPlaceholderPathMatch subclass: #WAMultiPlaceholderPathMatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMultiPlaceholderPathMatch guid: (GUID fromString: '{b9fa916a-9733-4bf6-ad8e-1926cf180c7b}')!

WAMultiPlaceholderPathMatch comment: ''!

!WAMultiPlaceholderPathMatch categoriesForClass!Route! !

!WAMultiPlaceholderPathMatch methodsFor!

mapArgumentsWithElements: aCollection into: anArray usingOffset: anInteger	anArray		at: targetIndex		put: (aCollection copyFrom: sourceIndex to: sourceIndex + anInteger)!

matches: aString	^ true!

matchesJustOneElement	^ false!

priority	^ 1! !

!WAMultiPlaceholderPathMatch categoriesForMethods!
mapArgumentsWithElements:into:usingOffset:!public! !
matches:!public!testing! !
matchesJustOneElement!public!testing! !
priority!accessing!public! !
!

!WAMultiPlaceholderPathMatch class methodsFor!

fromString: aString index: anInteger arguments: aCollectionOfStrings	^ self		source: anInteger		target: (self			targetIndexOf: (aString copyFrom: 2 to: aString size - 1)			arguments: aCollectionOfStrings)!

source: anFirstInteger target: aSecondInteger	^ self basicNew initializeWithSourceIndex: anFirstInteger targetIndex: aSecondInteger! !

!WAMultiPlaceholderPathMatch class categoriesForMethods!
fromString:index:arguments:!instance creation!public! !
source:target:!instance creation!public! !
!

