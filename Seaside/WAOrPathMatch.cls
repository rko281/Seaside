"Filed out from Dolphin Smalltalk 7"!

WAPPathMatch subclass: #WAOrPathMatch
	instanceVariableNames: 'elements'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAOrPathMatch guid: (GUID fromString: '{89b0df63-f33a-423f-823b-9336ee9fa5c5}')!
WAOrPathMatch comment: ''!
!WAOrPathMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAOrPathMatch methodsFor!

argumentCount	^ 0!

inititializeWith: aString	self initialize.	elements := GRPlatform subStringsIn: aString splitBy: $|.	"cut off leading $[ from first"	elements at: 1 put: (elements first allButFirst).	"cut off trailing $] from first"	elements at: elements size put: (elements last allButLast)!

mapArgumentsWithElements: aCollection into: anArray usingOffset: anInteger	"ignore"!

matches: aString	^ elements includes: aString!

priority	^ 3! !
!WAOrPathMatch categoriesFor: #argumentCount!accessing!public! !
!WAOrPathMatch categoriesFor: #inititializeWith:!initialization!public! !
!WAOrPathMatch categoriesFor: #mapArgumentsWithElements:into:usingOffset:!public! !
!WAOrPathMatch categoriesFor: #matches:!public!testing! !
!WAOrPathMatch categoriesFor: #priority!accessing!public! !

!WAOrPathMatch class methodsFor!

fromString: aString	^ self basicNew inititializeWith: aString!

fromString: aString index: anInteger arguments: aCollectionOfStrings	^ self fromString: aString! !
!WAOrPathMatch class categoriesFor: #fromString:!instance creation!public! !
!WAOrPathMatch class categoriesFor: #fromString:index:arguments:!instance creation!public! !

