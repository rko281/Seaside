"Filed out from Dolphin Smalltalk 7"!

WAHandlerTrackingStrategy subclass: #WASessionTrackingStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASessionTrackingStrategy guid: (GUID fromString: '{0229abf2-3b51-493f-a463-d8513f1ec76a}')!
WASessionTrackingStrategy comment: 'I am the abstract base class for tracking strategies that track sessions differently from other request handlers (mostly WADocumentHandlers).Concrete implementsions have to take care that expired document handlers don''t expire sessions.'!
!WASessionTrackingStrategy categoriesForClass!Seaside-Session! !
!WASessionTrackingStrategy class methodsFor!

isAbstract	^ self name = #WASessionTrackingStrategy! !
!WASessionTrackingStrategy class categoriesFor: #isAbstract!public!testing! !

