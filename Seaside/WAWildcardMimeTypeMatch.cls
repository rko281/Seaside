"Filed out from Dolphin Smalltalk 7"!

WAMimeTypeMatch subclass: #WAWildcardMimeTypeMatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWildcardMimeTypeMatch guid: (GUID fromString: '{98c899eb-8144-448e-a43d-338ee78632b8}')!
WAWildcardMimeTypeMatch comment: ''!
!WAWildcardMimeTypeMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAWildcardMimeTypeMatch methodsFor!

matches: aMimeType	^ true!

printOn: aStream	super printOn: aStream.	aStream 		nextPutAll: ' (mimeType: '; print: (WAMimeType main: '*' sub: '*');		nextPutAll: ' priority: '; print: self priority;		nextPut: $)!

priority	^ 1!

priorityFor: aMimeType	^ self priority! !
!WAWildcardMimeTypeMatch categoriesFor: #matches:!public!testing! !
!WAWildcardMimeTypeMatch categoriesFor: #printOn:!printing!public! !
!WAWildcardMimeTypeMatch categoriesFor: #priority!accessing!public! !
!WAWildcardMimeTypeMatch categoriesFor: #priorityFor:!accessing!public! !

