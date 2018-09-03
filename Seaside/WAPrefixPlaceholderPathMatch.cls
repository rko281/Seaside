﻿"Filed out from Dolphin Smalltalk 7"!

WAPlaceholderPathMatch subclass: #WAPrefixPlaceholderPathMatch
	instanceVariableNames: 'prefix'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPrefixPlaceholderPathMatch guid: (GUID fromString: '{e2d9720a-8578-46df-9354-81f8a3f0a27a}')!
WAPrefixPlaceholderPathMatch comment: ''!
!WAPrefixPlaceholderPathMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAPrefixPlaceholderPathMatch methodsFor!

initializeWithSourceIndex: anFirstInteger targetIndex: aSecondInteger prefix: aString

mapArgumentsWithElements: aCollection into: anArray usingOffset: anInteger

matches: aString

priority
!WAPrefixPlaceholderPathMatch categoriesFor: #initializeWithSourceIndex:targetIndex:prefix:!initialization!public! !
!WAPrefixPlaceholderPathMatch categoriesFor: #mapArgumentsWithElements:into:usingOffset:!public! !
!WAPrefixPlaceholderPathMatch categoriesFor: #matches:!public!testing! !
!WAPrefixPlaceholderPathMatch categoriesFor: #priority!accessing!public! !

!WAPrefixPlaceholderPathMatch class methodsFor!

fromString: aString index: anInteger arguments: aCollectionOfStrings

source: anFirstInteger target: aSecondInteger prefix: aString
!WAPrefixPlaceholderPathMatch class categoriesFor: #fromString:index:arguments:!instance creation!public! !
!WAPrefixPlaceholderPathMatch class categoriesFor: #source:target:prefix:!instance creation!public! !
