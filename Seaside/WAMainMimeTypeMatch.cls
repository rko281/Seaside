"Filed out from Dolphin Smalltalk 7"!

WAMimeTypeMatch subclass: #WAMainMimeTypeMatch
	instanceVariableNames: 'main'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMainMimeTypeMatch guid: (GUID fromString: '{a24aa6fe-d6ea-470d-850b-e1c8ccbc94e4}')!
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

