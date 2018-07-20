"Filed out from Dolphin Smalltalk 7"!

WACookieSessionTrackingStrategy subclass: #WACookieOnlySessionTrackingStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACookieOnlySessionTrackingStrategy guid: (GUID fromString: '{922c6755-a6ca-4d49-b3af-35aa29ad7e73}')!
WACookieOnlySessionTrackingStrategy comment: 'I track sessions using cookies and everything else using query fields. This works fine as long as the client accepts cookies. This breaks for web crawlers (they don''t accept cookies).'!
!WACookieOnlySessionTrackingStrategy categoriesForClass!Seaside-Session! !
!WACookieOnlySessionTrackingStrategy methodsFor!

addKey: aString toUrl: aUrl	"We never add a session key to the URL, the user agent has to support cookies"!

noHandlerFoundForKey: aString in: anApplication context: aRequestContext	| queryField |	queryField := self queryFieldKeyFromContext: aRequestContext.	aString = queryField ifFalse: [		"Don't delete the session cookie if we have an expired document halder.		Only delete the session cookie if we actually have an expired session."		self deleteSessionCookieOf: anApplication from: aRequestContext ].	super noHandlerFoundForKey: aString in: anApplication context: aRequestContext! !
!WACookieOnlySessionTrackingStrategy categoriesFor: #addKey:toUrl:!public! !
!WACookieOnlySessionTrackingStrategy categoriesFor: #noHandlerFoundForKey:in:context:!public! !

!WACookieOnlySessionTrackingStrategy class methodsFor!

isAbstract	^ self name = #WACookieHandlerTrackingStragety! !
!WACookieOnlySessionTrackingStrategy class categoriesFor: #isAbstract!public!testing! !

