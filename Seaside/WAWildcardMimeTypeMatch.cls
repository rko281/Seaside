"Filed out from Dolphin Smalltalk 7"!

WAMimeTypeMatch subclass: #WAWildcardMimeTypeMatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWildcardMimeTypeMatch guid: (GUID fromString: '{2458e05a-4d56-436c-8314-68fad2bdf9c6}')!
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

