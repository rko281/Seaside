"Filed out from Dolphin Smalltalk 7"!

WAInvisibleSessionTrackingStrategy subclass: #WAIPSessionTrackingStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAIPSessionTrackingStrategy guid: (GUID fromString: '{09fc99b8-4773-4253-8ddc-b21606838220}')!
WAIPSessionTrackingStrategy comment: 'I track sessions using the remote address of a client. Usually you don''t want to use this because it causes troubles when multiple users share the same IP (eg. several users from the same company). That''s why I''m marked as abstract.There are some special cases like crawlers where it can work though.'!
!WAIPSessionTrackingStrategy categoriesForClass!Seaside-Session! !
!WAIPSessionTrackingStrategy methodsFor!

sessionIdFromContext: aRequestContext	^ aRequestContext request forwardedFor ifNil:[ aRequestContext request remoteAddress ]! !
!WAIPSessionTrackingStrategy categoriesFor: #sessionIdFromContext:!private! !

!WAIPSessionTrackingStrategy class methodsFor!

isAbstract	^ true! !
!WAIPSessionTrackingStrategy class categoriesFor: #isAbstract!public!testing! !

