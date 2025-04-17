"Filed out from Dolphin Smalltalk"!

WAInvisibleSessionTrackingStrategy subclass: #WAIPSessionTrackingStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAIPSessionTrackingStrategy guid: (GUID fromString: '{da91b6a2-8cd5-4349-89d2-da13e45a086d}')!

WAIPSessionTrackingStrategy comment: 'I track sessions using the remote address of a client. Usually you don''t want to use this because it causes troubles when multiple users share the same IP (eg. several users from the same company). That''s why I''m marked as abstract.There are some special cases like crawlers where it can work though.'!

!WAIPSessionTrackingStrategy categoriesForClass!Tracking! !

!WAIPSessionTrackingStrategy methodsFor!

sessionIdFromContext: aRequestContext	^ aRequestContext request forwardedFor ifNil:[ aRequestContext request remoteAddress ]! !

!WAIPSessionTrackingStrategy categoriesForMethods!
sessionIdFromContext:!private! !
!

!WAIPSessionTrackingStrategy class methodsFor!

isAbstract	^ true! !

!WAIPSessionTrackingStrategy class categoriesForMethods!
isAbstract!public!testing! !
!

