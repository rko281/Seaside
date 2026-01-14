"Filed out from Dolphin Smalltalk"!

WAPPathMatch subclass: #WAOrPathMatch
	instanceVariableNames: 'elements'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAOrPathMatch guid: (GUID fromString: '{2b1cc5cc-0bbf-4ede-a422-c994831c6443}')!

WAOrPathMatch comment: ''!

!WAOrPathMatch categoriesForClass!Seaside-REST-Core-Route! !

!WAOrPathMatch methodsFor!

argumentCount	^ 0!

inititializeWith: aString	self initialize.	elements := GRPlatform subStringsIn: aString splitBy: $|.	"cut off leading $[ from first"	elements at: 1 put: (elements first allButFirst).	"cut off trailing $] from first"	elements at: elements size put: (elements last allButLast)!

mapArgumentsWithElements: aCollection into: anArray usingOffset: anInteger	"ignore"!

matches: aString	^ elements includes: aString!

priority	^ 3! !

!WAOrPathMatch categoriesForMethods!
argumentCount!accessing!public! !
inititializeWith:!initialization!public! !
mapArgumentsWithElements:into:usingOffset:!public! !
matches:!public!testing! !
priority!accessing!public! !
!

!WAOrPathMatch class methodsFor!

fromString: aString	^ self basicNew inititializeWith: aString!

fromString: aString index: anInteger arguments: aCollectionOfStrings	^ self fromString: aString! !

!WAOrPathMatch class categoriesForMethods!
fromString:!instance creation!public! !
fromString:index:arguments:!instance creation!public! !
!

