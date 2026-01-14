"Filed out from Dolphin Smalltalk"!

WAPlaceholderPathMatch subclass: #WAMultiPlaceholderPathMatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMultiPlaceholderPathMatch guid: (GUID fromString: '{a0d201b4-9690-4894-8dfd-650ae3082842}')!

WAMultiPlaceholderPathMatch comment: ''!

!WAMultiPlaceholderPathMatch categoriesForClass!Seaside-REST-Core-Route! !

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

