"Filed out from Dolphin Smalltalk"!

WAPlaceholderPathMatch subclass: #WASuffixPlaceholderPathMatch
	instanceVariableNames: 'suffix'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASuffixPlaceholderPathMatch guid: (GUID fromString: '{033cd2a7-9c0a-46b1-b205-0bb7ae974aa9}')!

WASuffixPlaceholderPathMatch comment: ''!

!WASuffixPlaceholderPathMatch categoriesForClass!Route! !

!WASuffixPlaceholderPathMatch methodsFor!

initializeWithSourceIndex: anFirstInteger targetIndex: aSecondInteger suffix: aString	self initializeWithSourceIndex: anFirstInteger targetIndex: aSecondInteger.	suffix := aString!

mapArgumentsWithElements: aCollection into: anArray usingOffset: anInteger	| value |	value := aCollection at: sourceIndex + anInteger.	anArray		at: targetIndex		put: (value copyFrom: 1 to: value size - suffix size)!

matches: aString	^ (aString size > suffix size)		and: [ aString endsWithSubCollection: suffix ]!

priority	^ 3! !

!WASuffixPlaceholderPathMatch categoriesForMethods!
initializeWithSourceIndex:targetIndex:suffix:!initialization!public! !
mapArgumentsWithElements:into:usingOffset:!public! !
matches:!public!testing! !
priority!accessing!public! !
!

!WASuffixPlaceholderPathMatch class methodsFor!

fromString: aString index: anInteger arguments: aCollectionOfStrings	| suffix |	suffix := aString copyAfter: $}.	^ self		source: anInteger		target: (self			targetIndexOf: (aString copyFrom: 2 to: aString size - suffix size - 1)			arguments: aCollectionOfStrings)		suffix: suffix!

source: anFirstInteger target: aSecondInteger suffix: aString	^ self basicNew		initializeWithSourceIndex: anFirstInteger		targetIndex: aSecondInteger		suffix: aString! !

!WASuffixPlaceholderPathMatch class categoriesForMethods!
fromString:index:arguments:!instance creation!public! !
source:target:suffix:!instance creation!public! !
!

