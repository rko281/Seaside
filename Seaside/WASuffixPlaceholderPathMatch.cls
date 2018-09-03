"Filed out from Dolphin Smalltalk 7"!

WAPlaceholderPathMatch subclass: #WASuffixPlaceholderPathMatch
	instanceVariableNames: 'suffix'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASuffixPlaceholderPathMatch guid: (GUID fromString: '{6318880b-0855-4469-8102-26e3b90ebbc1}')!
WASuffixPlaceholderPathMatch comment: ''!
!WASuffixPlaceholderPathMatch categoriesForClass!Seaside-REST-Core-Route! !
!WASuffixPlaceholderPathMatch methodsFor!

initializeWithSourceIndex: anFirstInteger targetIndex: aSecondInteger suffix: aString	self initializeWithSourceIndex: anFirstInteger targetIndex: aSecondInteger.	suffix := aString!

mapArgumentsWithElements: aCollection into: anArray usingOffset: anInteger	| value |	value := aCollection at: sourceIndex + anInteger.	anArray		at: targetIndex		put: (value copyFrom: 1 to: value size - suffix size)!

matches: aString	^ (aString size > suffix size)		and: [ aString endsWithSubCollection: suffix ]!

priority	^ 3! !
!WASuffixPlaceholderPathMatch categoriesFor: #initializeWithSourceIndex:targetIndex:suffix:!initialization!public! !
!WASuffixPlaceholderPathMatch categoriesFor: #mapArgumentsWithElements:into:usingOffset:!public! !
!WASuffixPlaceholderPathMatch categoriesFor: #matches:!public!testing! !
!WASuffixPlaceholderPathMatch categoriesFor: #priority!accessing!public! !

!WASuffixPlaceholderPathMatch class methodsFor!

fromString: aString index: anInteger arguments: aCollectionOfStrings	| suffix |	suffix := aString copyAfter: $}.	^ self		source: anInteger		target: (self			targetIndexOf: (aString copyFrom: 2 to: aString size - suffix size - 1)			arguments: aCollectionOfStrings)		suffix: suffix!

source: anFirstInteger target: aSecondInteger suffix: aString	^ self basicNew		initializeWithSourceIndex: anFirstInteger		targetIndex: aSecondInteger		suffix: aString! !
!WASuffixPlaceholderPathMatch class categoriesFor: #fromString:index:arguments:!instance creation!public! !
!WASuffixPlaceholderPathMatch class categoriesFor: #source:target:suffix:!instance creation!public! !

