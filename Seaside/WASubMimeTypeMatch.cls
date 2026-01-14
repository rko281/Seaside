"Filed out from Dolphin Smalltalk"!

WAMimeTypeMatch subclass: #WASubMimeTypeMatch
	instanceVariableNames: 'sub'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASubMimeTypeMatch guid: (GUID fromString: '{f800344c-111c-4f13-939c-68d99c958f30}')!

WASubMimeTypeMatch comment: ''!

!WASubMimeTypeMatch categoriesForClass!Seaside-REST-Core-Route! !

!WASubMimeTypeMatch methodsFor!

initializeWithSub: aSubString	self initialize.	sub := aSubString!

matches: aMimeType	^ aMimeType sub = '*' or: [ aMimeType sub = sub ]!

printOn: aStream	super printOn: aStream.	aStream 		nextPutAll: ' (mimeType: '; print: (WAMimeType main: '*' sub: sub);		nextPutAll: ' priority: '; print: self priority;		nextPut: $)!

priority	^ 2!

priorityFor: aMimeType	^ aMimeType sub = sub			ifTrue: [ self priority ]			ifFalse: [ -1 ]! !

!WASubMimeTypeMatch categoriesForMethods!
initializeWithSub:!initialization!public! !
matches:!public!testing! !
printOn:!printing!public! !
priority!accessing!public! !
priorityFor:!accessing!public! !
!

!WASubMimeTypeMatch class methodsFor!

sub: aSubString	^ self basicNew initializeWithSub: aSubString! !

!WASubMimeTypeMatch class categoriesForMethods!
sub:!instance creation!public! !
!

