"Filed out from Dolphin Smalltalk"!

WAMimeTypeMatch subclass: #WAMainMimeTypeMatch
	instanceVariableNames: 'main'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMainMimeTypeMatch guid: (GUID fromString: '{fd5108d8-b119-477f-9774-798f39bd8085}')!

WAMainMimeTypeMatch comment: ''!

!WAMainMimeTypeMatch categoriesForClass!Seaside-REST-Core-Route! !

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

