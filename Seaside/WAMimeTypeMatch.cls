"Filed out from Dolphin Smalltalk"!

WAMatch subclass: #WAMimeTypeMatch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMimeTypeMatch guid: (GUID fromString: '{3d3d567b-6996-4513-80ba-e13a3017bc6e}')!

WAMimeTypeMatch comment: ''!

!WAMimeTypeMatch categoriesForClass!Seaside-REST-Core-Route! !

!WAMimeTypeMatch methodsFor!

matches: aMimeType	self subclassResponsibility!

priority	self subclassResponsibility!

priorityFor: aMimeType	self subclassResponsibility!

seasideMimeType	"Works only for exact matches."	^ nil! !

!WAMimeTypeMatch categoriesForMethods!
matches:!public!testing! !
priority!accessing!public! !
priorityFor:!accessing!public! !
seasideMimeType!accessing!public! !
!

!WAMimeTypeMatch class methodsFor!

fromMimeType: aMimeType	^ aMimeType main = '*'		ifTrue: [			aMimeType sub = '*'				ifTrue: [ WAWildcardMimeTypeMatch new ]				ifFalse: [ WASubMimeTypeMatch					sub: aMimeType sub ] ]		ifFalse: [			aMimeType sub = '*'				ifTrue: [ WAMainMimeTypeMatch					main: aMimeType main ]				ifFalse: [ WAFullMimeTypeMatch					main: aMimeType main					sub: aMimeType sub ] ]!

fromString: aString	^ self fromMimeType: (WAMimeType fromString: aString)! !

!WAMimeTypeMatch class categoriesForMethods!
fromMimeType:!instance creation!public! !
fromString:!instance creation!public! !
!

