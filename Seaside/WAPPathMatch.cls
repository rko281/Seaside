﻿"Filed out from Dolphin Smalltalk 7"!

WAMatch subclass: #WAPPathMatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPPathMatch guid: (GUID fromString: '{df87aff1-3f85-40ea-8213-637b00d1e045}')!
WAPPathMatch comment: ''!
!WAPPathMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAPPathMatch methodsFor!

argumentCount

mapArgumentsWithElements: aCollection into: anArray

mapArgumentsWithElements: aCollection into: anArray usingOffset: anInteger

matches: aString

matchesJustOneElement

printOn: aStream 

priority
!WAPPathMatch categoriesFor: #argumentCount!accessing!public! !
!WAPPathMatch categoriesFor: #mapArgumentsWithElements:into:!public! !
!WAPPathMatch categoriesFor: #mapArgumentsWithElements:into:usingOffset:!public! !
!WAPPathMatch categoriesFor: #matches:!public!testing! !
!WAPPathMatch categoriesFor: #matchesJustOneElement!public!testing! !
!WAPPathMatch categoriesFor: #printOn:!printing!public! !
!WAPPathMatch categoriesFor: #priority!accessing!public! !

!WAPPathMatch class methodsFor!

fromString: aString index: anInteger arguments: aCollectionOfStrings

matchClassFor: aString
!WAPPathMatch class categoriesFor: #fromString:index:arguments:!instance creation!public! !
!WAPPathMatch class categoriesFor: #matchClassFor:!private! !
