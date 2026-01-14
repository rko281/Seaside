"Filed out from Dolphin Smalltalk"!

WAInvisibleSessionTrackingStrategy subclass: #WAIPSessionTrackingStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAIPSessionTrackingStrategy guid: (GUID fromString: '{29ceab23-10b4-4aed-9cbb-79115dd5623b}')!

WAIPSessionTrackingStrategy comment: 'I track sessions using the remote address of a client. Usually you don''t want to use this because it causes troubles when multiple users share the same IP (eg. several users from the same company). That''s why I''m marked as abstract.There are some special cases like crawlers where it can work though.'!

!WAIPSessionTrackingStrategy categoriesForClass!Seaside-Session-Tracking! !

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

