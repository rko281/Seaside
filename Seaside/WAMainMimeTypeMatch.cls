"Filed out from Dolphin Smalltalk 7"!

WAMimeTypeMatch subclass: #WAMainMimeTypeMatch
	instanceVariableNames: 'main'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMainMimeTypeMatch guid: (GUID fromString: '{7d0732d5-3874-4fd0-baa0-961c53c33e1d}')!
WAMainMimeTypeMatch comment: ''!
!WAMainMimeTypeMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAMainMimeTypeMatch methodsFor!

initializeWithMain: aMainString	self initialize.	main := aMainString!

matches: aMimeType	^ aMimeType main = '*' or: [ aMimeType main = main ]!

printOn: aStream	super printOn: aStream.	aStream 		nextPutAll: ' (mimeType: '; print: (WAMimeType main: main sub: '*');		nextPutAll: ' priority: '; print: self priority;		nextPut: $)!

priority	^ 2!

priorityFor: aMimeType	^ aMimeType main = main			ifTrue: [ self priority ]			ifFalse: [ -1 ]! !
!WAMainMimeTypeMatch categoriesFor: #initializeWithMain:!initialization!public! !
!WAMainMimeTypeMatch categoriesFor: #matches:!public!testing! !
!WAMainMimeTypeMatch categoriesFor: #printOn:!printing!public! !
!WAMainMimeTypeMatch categoriesFor: #priority!accessing!public! !
!WAMainMimeTypeMatch categoriesFor: #priorityFor:!accessing!public! !

!WAMainMimeTypeMatch class methodsFor!

main: aMainString	^ self basicNew initializeWithMain: aMainString! !
!WAMainMimeTypeMatch class categoriesFor: #main:!instance creation!public! !

