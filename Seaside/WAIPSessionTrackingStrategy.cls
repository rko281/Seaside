"Filed out from Dolphin Smalltalk 7"!

WAInvisibleSessionTrackingStrategy subclass: #WAIPSessionTrackingStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAIPSessionTrackingStrategy guid: (GUID fromString: '{7dc19207-3c7b-4c42-acf0-ff270b562834}')!
WAIPSessionTrackingStrategy comment: 'I track sessions using the remote address of a client. Usually you don''t want to use this because it causes troubles when multiple users share the same IP (eg. several users from the same company). That''s why I''m marked as abstract.There are some special cases like crawlers where it can work though.'!
!WAIPSessionTrackingStrategy categoriesForClass!Seaside-Session! !
!WAIPSessionTrackingStrategy methodsFor!

remoteAddressFromRequest: aRequest	^ aRequest			headerAt: 'x-forwarded-for'			ifAbsent: [				aRequest					headerAt: 'forwarded-for'					ifAbsent: [ aRequest remoteAddress ] ]!

sessionIdFromContext: aRequestContext	^ self remoteAddressFromRequest: aRequestContext request! !
!WAIPSessionTrackingStrategy categoriesFor: #remoteAddressFromRequest:!private! !
!WAIPSessionTrackingStrategy categoriesFor: #sessionIdFromContext:!private! !

!WAIPSessionTrackingStrategy class methodsFor!

isAbstract	^ true! !
!WAIPSessionTrackingStrategy class categoriesFor: #isAbstract!public!testing! !

