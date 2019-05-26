"Filed out from Dolphin Smalltalk 7"!

WAMimeTypeMatch subclass: #WASubMimeTypeMatch
	instanceVariableNames: 'sub'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASubMimeTypeMatch guid: (GUID fromString: '{0b7414e6-e962-4f60-b986-e3be301461f2}')!
WASubMimeTypeMatch comment: ''!
!WASubMimeTypeMatch categoriesForClass!Seaside-REST-Core-Route! !
!WASubMimeTypeMatch methodsFor!

initializeWithSub: aSubString	self initialize.	sub := aSubString!

matches: aMimeType	^ aMimeType sub = '*' or: [ aMimeType sub = sub ]!

printOn: aStream	super printOn: aStream.	aStream 		nextPutAll: ' (mimeType: '; print: (WAMimeType main: '*' sub: sub);		nextPutAll: ' priority: '; print: self priority;		nextPut: $)!

priority	^ 2!

priorityFor: aMimeType	^ aMimeType sub = sub			ifTrue: [ self priority ]			ifFalse: [ -1 ]! !
!WASubMimeTypeMatch categoriesFor: #initializeWithSub:!initialization!public! !
!WASubMimeTypeMatch categoriesFor: #matches:!public!testing! !
!WASubMimeTypeMatch categoriesFor: #printOn:!printing!public! !
!WASubMimeTypeMatch categoriesFor: #priority!accessing!public! !
!WASubMimeTypeMatch categoriesFor: #priorityFor:!accessing!public! !

!WASubMimeTypeMatch class methodsFor!

sub: aSubString	^ self basicNew initializeWithSub: aSubString! !
!WASubMimeTypeMatch class categoriesFor: #sub:!instance creation!public! !

