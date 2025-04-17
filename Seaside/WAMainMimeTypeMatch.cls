"Filed out from Dolphin Smalltalk"!

WAMimeTypeMatch subclass: #WAMainMimeTypeMatch
	instanceVariableNames: 'main'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMainMimeTypeMatch guid: (GUID fromString: '{da6c5a5f-d3a3-4971-9d0a-74f09988f218}')!

WAMainMimeTypeMatch comment: ''!

!WAMainMimeTypeMatch categoriesForClass!Route! !

!WAMainMimeTypeMatch methodsFor!

initializeWithMain: aMainString	self initialize.	main := aMainString!

matches: aMimeType	^ aMimeType main = '*' or: [ aMimeType main = main ]!

printOn: aStream	super printOn: aStream.	aStream 		nextPutAll: ' (mimeType: '; print: (WAMimeType main: main sub: '*');		nextPutAll: ' priority: '; print: self priority;		nextPut: $)!

priority	^ 2!

priorityFor: aMimeType	^ aMimeType main = main			ifTrue: [ self priority ]			ifFalse: [ -1 ]! !

!WAMainMimeTypeMatch categoriesForMethods!
initializeWithMain:!initialization!public! !
matches:!public!testing! !
printOn:!printing!public! !
priority!accessing!public! !
priorityFor:!accessing!public! !
!

!WAMainMimeTypeMatch class methodsFor!

main: aMainString	^ self basicNew initializeWithMain: aMainString! !

!WAMainMimeTypeMatch class categoriesForMethods!
main:!instance creation!public! !
!

