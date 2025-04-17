"Filed out from Dolphin Smalltalk"!

WAMatch subclass: #WAPPathMatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPPathMatch guid: (GUID fromString: '{efccfcbb-4272-40f7-9342-ebca93bdd224}')!

WAPPathMatch comment: ''!

!WAPPathMatch categoriesForClass!Route! !

!WAPPathMatch methodsFor!

argumentCount	self subclassResponsibility!

mapArgumentsWithElements: aCollection into: anArray	self mapArgumentsWithElements: aCollection into: anArray usingOffset: 0!

mapArgumentsWithElements: aCollection into: anArray usingOffset: anInteger	self subclassResponsibility!

matches: aString	self subclassResponsibility!

matchesJustOneElement	^ true!

printOn: aStream 	super printOn: aStream.		aStream		nextPutAll: ' (argumentCount: '; print: self argumentCount;		nextPutAll: ' matchesJustOneElement: '; print: self matchesJustOneElement;		nextPutAll: ' priority: '; print: self priority;		nextPut: $)!

priority	self subclassResponsibility! !

!WAPPathMatch categoriesForMethods!
argumentCount!accessing!public! !
mapArgumentsWithElements:into:!public! !
mapArgumentsWithElements:into:usingOffset:!public! !
matches:!public!testing! !
matchesJustOneElement!public!testing! !
printOn:!printing!public! !
priority!accessing!public! !
!

!WAPPathMatch class methodsFor!

fromString: aString index: anInteger arguments: aCollectionOfStrings	^ (self matchClassFor: aString)		fromString: aString index: anInteger arguments: aCollectionOfStrings!

matchClassFor: aString	aString isEmpty ifTrue: [ ^ WAExactPathMatch  ].	aString first = ${		ifTrue: [			| index |			index := aString indexOf: $} startingAt: 2.			index = aString size				"{name}"				ifTrue: [ ^ WAFullPlaceholderPathMatch ].			index isZero				"{name}suffix"				ifFalse: [ ^ WASuffixPlaceholderPathMatch ] ].	"prefix{name}"	(aString last = $}		and: [ (aString indexOf: ${) isZero not ])			ifTrue: [ ^ WAPrefixPlaceholderPathMatch ].	"[option1|option2]"	(aString first = $[		and: [ aString last = $]		and: [ aString includes: $| ] ])			ifTrue: [ ^ WAOrPathMatch ].	"*name*"	(aString first = $*		and: [ aString last = $* ])			ifTrue: [ ^ WAMultiPlaceholderPathMatch ].	^ WAExactPathMatch! !

!WAPPathMatch class categoriesForMethods!
fromString:index:arguments:!instance creation!public! !
matchClassFor:!private! !
!

