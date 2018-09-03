"Filed out from Dolphin Smalltalk 7"!

WAPPathMatch subclass: #WAExactPathMatch
	instanceVariableNames: 'element'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAExactPathMatch guid: (GUID fromString: '{1ca595b8-d759-4ea3-8679-bfc8d518093c}')!
WAExactPathMatch comment: ''!
!WAExactPathMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAExactPathMatch methodsFor!

argumentCount	^ 0!

inititializeWith: aString	self initialize.	element := aString!

mapArgumentsWithElements: aCollection into: anArray usingOffset: anInteger	"ignore"!

matches: aString	^ element = aString!

priority	^ 3! !
!WAExactPathMatch categoriesFor: #argumentCount!accessing!public! !
!WAExactPathMatch categoriesFor: #inititializeWith:!initialization!public! !
!WAExactPathMatch categoriesFor: #mapArgumentsWithElements:into:usingOffset:!public! !
!WAExactPathMatch categoriesFor: #matches:!public!testing! !
!WAExactPathMatch categoriesFor: #priority!accessing!public! !

!WAExactPathMatch class methodsFor!

fromString: aString	^ self basicNew inititializeWith: aString!

fromString: aString index: anInteger arguments: aCollectionOfStrings	^ self fromString: aString! !
!WAExactPathMatch class categoriesFor: #fromString:!instance creation!public! !
!WAExactPathMatch class categoriesFor: #fromString:index:arguments:!instance creation!public! !

