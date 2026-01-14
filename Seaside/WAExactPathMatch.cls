"Filed out from Dolphin Smalltalk"!

WAPPathMatch subclass: #WAExactPathMatch
	instanceVariableNames: 'element'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAExactPathMatch guid: (GUID fromString: '{cdc666c6-9924-43d3-a34e-a7c13847c454}')!

WAExactPathMatch comment: ''!

!WAExactPathMatch categoriesForClass!Seaside-REST-Core-Route! !

!WAExactPathMatch methodsFor!

argumentCount	^ 0!

inititializeWith: aString	self initialize.	element := aString!

mapArgumentsWithElements: aCollection into: anArray usingOffset: anInteger	"ignore"!

matches: aString	^ element = aString!

priority	^ 3! !

!WAExactPathMatch categoriesForMethods!
argumentCount!accessing!public! !
inititializeWith:!initialization!public! !
mapArgumentsWithElements:into:usingOffset:!public! !
matches:!public!testing! !
priority!accessing!public! !
!

!WAExactPathMatch class methodsFor!

fromString: aString	^ self basicNew inititializeWith: aString!

fromString: aString index: anInteger arguments: aCollectionOfStrings	^ self fromString: aString! !

!WAExactPathMatch class categoriesForMethods!
fromString:!instance creation!public! !
fromString:index:arguments:!instance creation!public! !
!

