"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAFileLibraryResource
	instanceVariableNames: 'filepath mimeType cacheDuration contents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFileLibraryResource guid: (GUID fromString: '{cbce413d-b279-4055-b688-f8940145893c}')!

WAFileLibraryResource comment: 'A resource within a Seaside file library'!

!WAFileLibraryResource categoriesForClass!Seaside-Core-Libraries! !

!WAFileLibraryResource methodsFor!

cacheDuration	^ cacheDuration!

cacheDuration: anObject	cacheDuration := anObject!

contents	^ contents!

contents: anObject	contents := anObject!

filepath	^ filepath!

filepath: anObject	filepath := anObject!

mimeType	^ mimeType!

mimeType: anObject	mimeType := anObject!

printOn: aStream	super printOn: aStream.	aStream		nextPutAll: ' cacheDuration: ';		print: self cacheDuration.	aStream		nextPutAll: ' filepath: ';		print: self filepath.	aStream		nextPutAll: ' mimeType: ';		print: self mimeType.	aStream		nextPutAll: ' contents: ';		print: (self contents greaseString truncateWithElipsisTo: 100)! !

!WAFileLibraryResource categoriesForMethods!
cacheDuration!accessing!public! !
cacheDuration:!accessing!public! !
contents!accessing!public! !
contents:!accessing!public! !
filepath!accessing!public! !
filepath:!accessing!public! !
mimeType!accessing!public! !
mimeType:!accessing!public! !
printOn:!printing!public! !
!

!WAFileLibraryResource class methodsFor!

emptyInstance	^ self filepath: '' mimeType: WAMimeType textPlain cacheDuration: Duration zero contents: ''!

filepath: filepath mimeType: aMimeType cacheDuration: cacheDuration contents: contents	^ self new		filepath: filepath;		mimeType: aMimeType;		cacheDuration: cacheDuration;		contents: contents;		yourself! !

!WAFileLibraryResource class categoriesForMethods!
emptyInstance!instance creation!public! !
filepath:mimeType:cacheDuration:contents:!instance creation!public! !
!

