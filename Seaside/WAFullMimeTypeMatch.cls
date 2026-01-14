"Filed out from Dolphin Smalltalk"!

WAMimeTypeMatch subclass: #WAFullMimeTypeMatch
	instanceVariableNames: 'main sub'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFullMimeTypeMatch guid: (GUID fromString: '{030504da-9c0d-4b0b-9cba-bf60e9a6146d}')!

WAFullMimeTypeMatch comment: ''!

!WAFullMimeTypeMatch categoriesForClass!Seaside-REST-Core-Route! !

!WAFullMimeTypeMatch methodsFor!

initializeWithMain: aMainString sub: aSubString	self initialize.	main := aMainString.	sub := aSubString!

matches: aMimeType	^ (aMimeType main = '*'		or: [ aMimeType main = main ])		and: [			aMimeType sub = '*'				or: [ aMimeType sub = sub ] ]!

printOn: aStream	super printOn: aStream.	aStream 		nextPutAll: ' (mimeType: '; print: self seasideMimeType;		nextPutAll: ' priority: '; print: self priority;		nextPut: $)!

priority	^ 3!

priorityFor: aMimeType	^ (aMimeType main = main		and: [ aMimeType sub = sub ])			ifTrue: [ self priority ]			ifFalse: [ -1 ]!

seasideMimeType	^ WAMimeType main: main sub: sub! !

!WAFullMimeTypeMatch categoriesForMethods!
initializeWithMain:sub:!initialization!public! !
matches:!public!testing! !
printOn:!printing!public! !
priority!accessing!public! !
priorityFor:!accessing!public! !
seasideMimeType!accessing!public! !
!

!WAFullMimeTypeMatch class methodsFor!

main: aMainString sub: aSubString	^ self basicNew initializeWithMain: aMainString sub: aSubString! !

!WAFullMimeTypeMatch class categoriesForMethods!
main:sub:!instance creation!public! !
!

