"Filed out from Dolphin Smalltalk"!

WAMimeTypeMatch subclass: #WAWildcardMimeTypeMatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAWildcardMimeTypeMatch guid: (GUID fromString: '{94b16081-b9e7-45d9-9d53-651f55071c20}')!

WAWildcardMimeTypeMatch comment: ''!

!WAWildcardMimeTypeMatch categoriesForClass!Seaside-REST-Core-Route! !

!WAWildcardMimeTypeMatch methodsFor!

matches: aMimeType	^ true!

printOn: aStream	super printOn: aStream.	aStream 		nextPutAll: ' (mimeType: '; print: (WAMimeType main: '*' sub: '*');		nextPutAll: ' priority: '; print: self priority;		nextPut: $)!

priority	^ 1!

priorityFor: aMimeType	^ self priority! !

!WAWildcardMimeTypeMatch categoriesForMethods!
matches:!public!testing! !
printOn:!printing!public! !
priority!accessing!public! !
priorityFor:!accessing!public! !
!

