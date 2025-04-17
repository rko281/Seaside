"Filed out from Dolphin Smalltalk"!

WAHandlerTrackingStrategy subclass: #WASessionTrackingStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASessionTrackingStrategy guid: (GUID fromString: '{1f02dee5-2dec-448c-8b2a-cbd203a209b3}')!

WASessionTrackingStrategy comment: 'I am the abstract base class for tracking strategies that track sessions differently from other request handlers (mostly WADocumentHandlers).Concrete implementations have to take care that expired document handlers don''t expire sessions.'!

!WASessionTrackingStrategy categoriesForClass!Tracking! !

!WASessionTrackingStrategy class methodsFor!

isAbstract	^ self name = #WASessionTrackingStrategy! !

!WASessionTrackingStrategy class categoriesForMethods!
isAbstract!public!testing! !
!

