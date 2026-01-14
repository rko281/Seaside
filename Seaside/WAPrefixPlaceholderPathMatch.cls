"Filed out from Dolphin Smalltalk"!

WAPlaceholderPathMatch subclass: #WAPrefixPlaceholderPathMatch
	instanceVariableNames: 'prefix'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPrefixPlaceholderPathMatch guid: (GUID fromString: '{fa05b813-2f02-4449-826d-305c47376ff7}')!

WAPrefixPlaceholderPathMatch comment: ''!

!WAPrefixPlaceholderPathMatch categoriesForClass!Seaside-REST-Core-Route! !

!WAPrefixPlaceholderPathMatch methodsFor!

initializeWithSourceIndex: anFirstInteger targetIndex: aSecondInteger prefix: aString	self initializeWithSourceIndex: anFirstInteger targetIndex: aSecondInteger.	prefix := aString!

mapArgumentsWithElements: aCollection into: anArray usingOffset: anInteger	| value |	value := aCollection at: sourceIndex + anInteger.	anArray		at: targetIndex		put: (value copyFrom: prefix size + 1 to: value size)!

matches: aString	^ (aString size > prefix size)		and: [ aString beginsWithSubCollection: prefix ]!

priority	^ 3! !

!WAPrefixPlaceholderPathMatch categoriesForMethods!
initializeWithSourceIndex:targetIndex:prefix:!initialization!public! !
mapArgumentsWithElements:into:usingOffset:!public! !
matches:!public!testing! !
priority!accessing!public! !
!

!WAPrefixPlaceholderPathMatch class methodsFor!

fromString: aString index: anInteger arguments: aCollectionOfStrings	| prefix |	prefix := aString copyUpTo: ${.	^ self		source: anInteger		target: (self			targetIndexOf: (aString copyFrom: prefix size + 2 to: aString size - 1)			arguments: aCollectionOfStrings)		prefix: prefix!

source: anFirstInteger target: aSecondInteger prefix: aString	^ self basicNew		initializeWithSourceIndex: anFirstInteger		targetIndex: aSecondInteger		prefix: aString! !

!WAPrefixPlaceholderPathMatch class categoriesForMethods!
fromString:index:arguments:!instance creation!public! !
source:target:prefix:!instance creation!public! !
!

