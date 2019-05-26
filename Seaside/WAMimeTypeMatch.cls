"Filed out from Dolphin Smalltalk 7"!

WAMatch subclass: #WAMimeTypeMatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMimeTypeMatch guid: (GUID fromString: '{394af8fe-65ca-40a7-99ed-dd0506ec04db}')!
WAMimeTypeMatch comment: ''!
!WAMimeTypeMatch categoriesForClass!Seaside-REST-Core-Route! !
!WAMimeTypeMatch methodsFor!

matches: aMimeType	self subclassResponsibility!

priority	self subclassResponsibility!

priorityFor: aMimeType	self subclassResponsibility!

seasideMimeType	"Works only for exact matches."	^ nil! !
!WAMimeTypeMatch categoriesFor: #matches:!public!testing! !
!WAMimeTypeMatch categoriesFor: #priority!accessing!public! !
!WAMimeTypeMatch categoriesFor: #priorityFor:!accessing!public! !
!WAMimeTypeMatch categoriesFor: #seasideMimeType!accessing!public! !

!WAMimeTypeMatch class methodsFor!

fromMimeType: aMimeType	^ aMimeType main = '*'		ifTrue: [			aMimeType sub = '*'				ifTrue: [ WAWildcardMimeTypeMatch new ]				ifFalse: [ WASubMimeTypeMatch					sub: aMimeType sub ] ]		ifFalse: [			aMimeType sub = '*'				ifTrue: [ WAMainMimeTypeMatch					main: aMimeType main ]				ifFalse: [ WAFullMimeTypeMatch					main: aMimeType main					sub: aMimeType sub ] ]!

fromString: aString	^ self fromMimeType: (WAMimeType fromString: aString)! !
!WAMimeTypeMatch class categoriesFor: #fromMimeType:!instance creation!public! !
!WAMimeTypeMatch class categoriesFor: #fromString:!instance creation!public! !

