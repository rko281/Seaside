"Filed out from Dolphin Smalltalk"!

WASessionTrackingStrategy subclass: #WACookieSessionTrackingStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACookieSessionTrackingStrategy guid: (GUID fromString: '{a94dcd9b-db94-45f9-9726-9ad6b7177825}')!

WACookieSessionTrackingStrategy comment: 'I am the abstract base class for tracking strategies that use cookies to track sessions and query fields to track everything else.'!

!WACookieSessionTrackingStrategy categoriesForClass!Seaside-Session-Tracking! !

!WACookieSessionTrackingStrategy methodsFor!

addCookieWithValue: aString to: aRequestContext	"Create a new handler key cookie and att it to the response."		aRequestContext response addCookie: 		(aRequestContext newCookie			key: self keyCookieName;			value: aString;			discard: true;			sameSite: 'Strict';			comment: 'the Seaside Session Cookie';			commentUrl: 'https://github.com/SeasideSt/Seaside/wiki/Session-Cookie';			yourself)!

addKey: aString toContext: aRequestContext	| oldCookie |	oldCookie := self cookieFromContext: aRequestContext ifAbsent: [ nil ].	(oldCookie isNil or: [ oldCookie value ~= aString ]) ifTrue: [		"only add the cookie if we don't already have one or it has the wrong key"		self addCookieWithValue: aString to: aRequestContext ]!

cookieFromContext: aRequestContext ifAbsent: absentBlock	"Answer the handler key cookie. If none is found, return the result of evaluating absentBlock.	There can be several cookies with the correct key so we try to find the one with the most specific path."	| candidates requestUrl |	candidates := aRequestContext request cookiesAt: self keyCookieName.		candidates isEmptyOrNil		ifTrue: [ ^ absentBlock value ].	candidates size = 1 		ifTrue: [ ^ candidates first ].			requestUrl := aRequestContext request url.	candidates := candidates collect: [ :each |		each -> (each path seasideUrl relativeTo: requestUrl) ].		candidates := candidates reject: [ :each |		| path |		path := each value.		path notEmpty and: [ path first = '..' ] ].	candidates isEmpty		ifTrue: [ ^ absentBlock value ].			candidates size > 1 ifTrue: [		candidates sort: [ :a :b |			 a value size <= b value size ] ].		^ candidates first key!

deleteSessionCookieOf: anApplication from: aRequestContext	| cookie baseUrl |	cookie := self cookieFromContext: aRequestContext ifAbsent: [ ^ self ].	baseUrl := anApplication url.	aRequestContext response 		deleteCookie: cookie		path:  baseUrl pathStringUnencoded		domain: baseUrl host!

keyCookieName	"Answer the name of the cookie to track the handler."		^ self keyField!

keyFromContext: aRequestContext	"If a query field is present it overrides a cookie."	| key |	key := self queryFieldKeyFromContext: aRequestContext.	^ key isNil		ifTrue: [ (self cookieFromContext: aRequestContext ifAbsent: [ ^ nil ]) value ]		ifFalse: [ key ]! !

!WACookieSessionTrackingStrategy categoriesForMethods!
addCookieWithValue:to:!private! !
addKey:toContext:!public! !
cookieFromContext:ifAbsent:!private! !
deleteSessionCookieOf:from:!private! !
keyCookieName!private! !
keyFromContext:!public! !
!

!WACookieSessionTrackingStrategy class methodsFor!

isAbstract	^ self name = #WACookieSessionTrackingStrategy! !

!WACookieSessionTrackingStrategy class categoriesForMethods!
isAbstract!public!testing! !
!

