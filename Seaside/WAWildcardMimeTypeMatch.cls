"Filed out from Dolphin Smalltalk"!

WAMimeTypeMatch subclass: #WAWildcardMimeTypeMatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAWildcardMimeTypeMatch guid: (GUID fromString: '{45580104-aa05-4fb0-a3b2-2bb84bd67b60}')!

WAWildcardMimeTypeMatch comment: ''!

!WAWildcardMimeTypeMatch categoriesForClass!Route! !

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

