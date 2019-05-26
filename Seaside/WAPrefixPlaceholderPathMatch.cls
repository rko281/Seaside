"Filed out from Dolphin Smalltalk 7"!

WAPlaceholderPathMatch subclass: #WAPrefixPlaceholderPathMatch
	instanceVariableNames: 'prefix'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPrefixPlaceholderPathMatch guid: (GUID fromString: '{42035cde-b5c0-4f1c-8803-dfad8f0a4d97}')!
WAPrefixPlaceholderPathMatch comment: ''!
!WAPrefixPlaceholderPathMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAPrefixPlaceholderPathMatch methodsFor!

initializeWithSourceIndex: anFirstInteger targetIndex: aSecondInteger prefix: aString	self initializeWithSourceIndex: anFirstInteger targetIndex: aSecondInteger.	prefix := aString!

mapArgumentsWithElements: aCollection into: anArray usingOffset: anInteger	| value |	value := aCollection at: sourceIndex + anInteger.	anArray		at: targetIndex		put: (value copyFrom: prefix size + 1 to: value size)!

matches: aString	^ (aString size > prefix size)		and: [ aString beginsWithSubCollection: prefix ]!

priority	^ 3! !
!WAPrefixPlaceholderPathMatch categoriesFor: #initializeWithSourceIndex:targetIndex:prefix:!initialization!public! !
!WAPrefixPlaceholderPathMatch categoriesFor: #mapArgumentsWithElements:into:usingOffset:!public! !
!WAPrefixPlaceholderPathMatch categoriesFor: #matches:!public!testing! !
!WAPrefixPlaceholderPathMatch categoriesFor: #priority!accessing!public! !

!WAPrefixPlaceholderPathMatch class methodsFor!

fromString: aString index: anInteger arguments: aCollectionOfStrings	| prefix |	prefix := aString copyUpTo: ${.	^ self		source: anInteger		target: (self			targetIndexOf: (aString copyFrom: prefix size + 2 to: aString size - 1)			arguments: aCollectionOfStrings)		prefix: prefix!

source: anFirstInteger target: aSecondInteger prefix: aString	^ self basicNew		initializeWithSourceIndex: anFirstInteger		targetIndex: aSecondInteger		prefix: aString! !
!WAPrefixPlaceholderPathMatch class categoriesFor: #fromString:index:arguments:!instance creation!public! !
!WAPrefixPlaceholderPathMatch class categoriesFor: #source:target:prefix:!instance creation!public! !

