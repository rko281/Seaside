"Filed out from Dolphin Smalltalk 7"!

WAMimeTypeMatch subclass: #WASubMimeTypeMatch
	instanceVariableNames: 'sub'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASubMimeTypeMatch guid: (GUID fromString: '{94904444-8874-48ad-9cc3-b69be236caf3}')!
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

