"Filed out from Dolphin Smalltalk"!

WAHandlerTrackingStrategy subclass: #WASessionTrackingStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASessionTrackingStrategy guid: (GUID fromString: '{7756614b-1a04-4229-ad81-71abc332a8ce}')!

WASessionTrackingStrategy comment: 'I am the abstract base class for tracking strategies that track sessions differently from other request handlers (mostly WADocumentHandlers).Concrete implementations have to take care that expired document handlers don''t expire sessions.'!

!WASessionTrackingStrategy categoriesForClass!Seaside-Session-Tracking! !

!WASessionTrackingStrategy class methodsFor!

isAbstract	^ self name = #WASessionTrackingStrategy! !

!WASessionTrackingStrategy class categoriesForMethods!
isAbstract!public!testing! !
!

