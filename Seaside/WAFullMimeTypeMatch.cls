"Filed out from Dolphin Smalltalk 7"!

WAMimeTypeMatch subclass: #WAFullMimeTypeMatch
	instanceVariableNames: 'main sub'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFullMimeTypeMatch guid: (GUID fromString: '{c15cefe3-e31f-4238-a14d-624fd7a06cac}')!
WAFullMimeTypeMatch comment: ''!
!WAFullMimeTypeMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAFullMimeTypeMatch methodsFor!

initializeWithMain: aMainString sub: aSubString	self initialize.	main := aMainString.	sub := aSubString!

matches: aMimeType	^ (aMimeType main = '*'		or: [ aMimeType main = main ])		and: [			aMimeType sub = '*'				or: [ aMimeType sub = sub ] ]!

printOn: aStream	super printOn: aStream.	aStream 		nextPutAll: ' (mimeType: '; print: self seasideMimeType;		nextPutAll: ' priority: '; print: self priority;		nextPut: $)!

priority	^ 3!

priorityFor: aMimeType	^ (aMimeType main = main		and: [ aMimeType sub = sub ])			ifTrue: [ self priority ]			ifFalse: [ -1 ]!

seasideMimeType	^ WAMimeType main: main sub: sub! !
!WAFullMimeTypeMatch categoriesFor: #initializeWithMain:sub:!initialization!public! !
!WAFullMimeTypeMatch categoriesFor: #matches:!public!testing! !
!WAFullMimeTypeMatch categoriesFor: #printOn:!printing!public! !
!WAFullMimeTypeMatch categoriesFor: #priority!accessing!public! !
!WAFullMimeTypeMatch categoriesFor: #priorityFor:!accessing!public! !
!WAFullMimeTypeMatch categoriesFor: #seasideMimeType!accessing!public! !

!WAFullMimeTypeMatch class methodsFor!

main: aMainString sub: aSubString	^ self basicNew initializeWithMain: aMainString sub: aSubString! !
!WAFullMimeTypeMatch class categoriesFor: #main:sub:!instance creation!public! !

