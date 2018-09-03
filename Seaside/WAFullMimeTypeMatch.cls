﻿"Filed out from Dolphin Smalltalk 7"!

WAMimeTypeMatch subclass: #WAFullMimeTypeMatch
	instanceVariableNames: 'main sub'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFullMimeTypeMatch guid: (GUID fromString: '{c15cefe3-e31f-4238-a14d-624fd7a06cac}')!
WAFullMimeTypeMatch comment: ''!
!WAFullMimeTypeMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAFullMimeTypeMatch methodsFor!

initializeWithMain: aMainString sub: aSubString

matches: aMimeType

printOn: aStream

priority

priorityFor: aMimeType

seasideMimeType
!WAFullMimeTypeMatch categoriesFor: #initializeWithMain:sub:!initialization!public! !
!WAFullMimeTypeMatch categoriesFor: #matches:!public!testing! !
!WAFullMimeTypeMatch categoriesFor: #printOn:!printing!public! !
!WAFullMimeTypeMatch categoriesFor: #priority!accessing!public! !
!WAFullMimeTypeMatch categoriesFor: #priorityFor:!accessing!public! !
!WAFullMimeTypeMatch categoriesFor: #seasideMimeType!accessing!public! !

!WAFullMimeTypeMatch class methodsFor!

main: aMainString sub: aSubString
!WAFullMimeTypeMatch class categoriesFor: #main:sub:!instance creation!public! !
