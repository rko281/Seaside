"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAFileLibraryResource
	instanceVariableNames: 'filepath mimeType cacheDuration contents'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFileLibraryResource guid: (GUID fromString: '{b4ebdfaa-29a2-48bd-82ad-3f681d2f01c9}')!
WAFileLibraryResource comment: ''!
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
!WAFileLibraryResource categoriesFor: #cacheDuration!accessing!public! !
!WAFileLibraryResource categoriesFor: #cacheDuration:!accessing!public! !
!WAFileLibraryResource categoriesFor: #contents!accessing!public! !
!WAFileLibraryResource categoriesFor: #contents:!accessing!public! !
!WAFileLibraryResource categoriesFor: #filepath!accessing!public! !
!WAFileLibraryResource categoriesFor: #filepath:!accessing!public! !
!WAFileLibraryResource categoriesFor: #mimeType!accessing!public! !
!WAFileLibraryResource categoriesFor: #mimeType:!accessing!public! !
!WAFileLibraryResource categoriesFor: #printOn:!printing!public! !

!WAFileLibraryResource class methodsFor!

emptyInstance	^ self filepath: '' mimeType: WAMimeType textPlain cacheDuration: Duration zero contents: ''!

filepath: filepath mimeType: aMimeType cacheDuration: cacheDuration contents: contents	^ self new		filepath: filepath;		mimeType: aMimeType;		cacheDuration: cacheDuration;		contents: contents;		yourself! !
!WAFileLibraryResource class categoriesFor: #emptyInstance!instance creation!public! !
!WAFileLibraryResource class categoriesFor: #filepath:mimeType:cacheDuration:contents:!instance creation!public! !

