"Filed out from Dolphin Smalltalk"!

WACookieSessionTrackingStrategy subclass: #WACookieOnlySessionTrackingStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACookieOnlySessionTrackingStrategy guid: (GUID fromString: '{ffff3f4d-e623-490d-a625-43ea48a89534}')!

WACookieOnlySessionTrackingStrategy comment: 'I track sessions using cookies and everything else using query fields. This works fine as long as the client accepts cookies. This breaks for web crawlers (they don''t accept cookies).'!

!WACookieOnlySessionTrackingStrategy categoriesForClass!Seaside-Session-Tracking! !

!WACookieOnlySessionTrackingStrategy methodsFor!

addKey: aString toUrl: aUrl	"We never add a session key to the URL, the user agent has to support cookies"!

noHandlerFoundForKey: aString in: anApplication context: aRequestContext	| queryField |	queryField := self queryFieldKeyFromContext: aRequestContext.	aString = queryField ifFalse: [		"Don't delete the session cookie if we have an expired document halder.		Only delete the session cookie if we actually have an expired session."		self deleteSessionCookieOf: anApplication from: aRequestContext ].	super noHandlerFoundForKey: aString in: anApplication context: aRequestContext! !

!WACookieOnlySessionTrackingStrategy categoriesForMethods!
addKey:toUrl:!public! !
noHandlerFoundForKey:in:context:!public! !
!

!WACookieOnlySessionTrackingStrategy class methodsFor!

isAbstract	^ self name = #WACookieHandlerTrackingStragety! !

!WACookieOnlySessionTrackingStrategy class categoriesForMethods!
isAbstract!public!testing! !
!

