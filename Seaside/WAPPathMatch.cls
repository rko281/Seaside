"Filed out from Dolphin Smalltalk 7"!

WAMatch subclass: #WAPPathMatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPPathMatch guid: (GUID fromString: '{df87aff1-3f85-40ea-8213-637b00d1e045}')!
WAPPathMatch comment: ''!
!WAPPathMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAPPathMatch methodsFor!

argumentCount	self subclassResponsibility!

mapArgumentsWithElements: aCollection into: anArray	self mapArgumentsWithElements: aCollection into: anArray usingOffset: 0!

mapArgumentsWithElements: aCollection into: anArray usingOffset: anInteger	self subclassResponsibility!

matches: aString	self subclassResponsibility!

matchesJustOneElement	^ true!

printOn: aStream 	super printOn: aStream.		aStream		nextPutAll: ' (argumentCount: '; print: self argumentCount;		nextPutAll: ' matchesJustOneElement: '; print: self matchesJustOneElement;		nextPutAll: ' priority: '; print: self priority;		nextPut: $)!

priority	self subclassResponsibility! !
!WAPPathMatch categoriesFor: #argumentCount!accessing!public! !
!WAPPathMatch categoriesFor: #mapArgumentsWithElements:into:!public! !
!WAPPathMatch categoriesFor: #mapArgumentsWithElements:into:usingOffset:!public! !
!WAPPathMatch categoriesFor: #matches:!public!testing! !
!WAPPathMatch categoriesFor: #matchesJustOneElement!public!testing! !
!WAPPathMatch categoriesFor: #printOn:!printing!public! !
!WAPPathMatch categoriesFor: #priority!accessing!public! !

!WAPPathMatch class methodsFor!

fromString: aString index: anInteger arguments: aCollectionOfStrings	^ (self matchClassFor: aString)		fromString: aString index: anInteger arguments: aCollectionOfStrings!

matchClassFor: aString	aString isEmpty ifTrue: [ ^ WAExactPathMatch  ].	aString first = ${		ifTrue: [			| index |			index := aString indexOf: $} startingAt: 2.			index = aString size				"{name}"				ifTrue: [ ^ WAFullPlaceholderPathMatch ].			index isZero				"{name}suffix"				ifFalse: [ ^ WASuffixPlaceholderPathMatch ] ].	"prefix{name}"	(aString last = $}		and: [ (aString indexOf: ${) isZero not ])			ifTrue: [ ^ WAPrefixPlaceholderPathMatch ].	"[option1|option2]"	(aString first = $[		and: [ aString last = $]		and: [ aString includes: $| ] ])			ifTrue: [ ^ WAOrPathMatch ].	"*name*"	(aString first = $*		and: [ aString last = $* ])			ifTrue: [ ^ WAMultiPlaceholderPathMatch ].	^ WAExactPathMatch! !
!WAPPathMatch class categoriesFor: #fromString:index:arguments:!instance creation!public! !
!WAPPathMatch class categoriesFor: #matchClassFor:!private! !

