﻿"Filed out from Dolphin Smalltalk"!

WACookieSessionTrackingStrategy subclass: #WACookieIfSupportedSessionTrackingStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACookieIfSupportedSessionTrackingStrategy guid: (GUID fromString: '{654a3b1d-f2c5-4a77-a9f7-d49132242664}')!

WACookieIfSupportedSessionTrackingStrategy comment: 'I use cookies to track sessions if the browser supports it and use query fields (?_s=key) otherwise. I keep adding the session cookie and the session query field until the session cookie shows up in the request. Then I stop adding the query field.'!

!WACookieIfSupportedSessionTrackingStrategy categoriesForClass!Tracking! !

!WACookieIfSupportedSessionTrackingStrategy methodsFor!

addKey: aString toUrl: aUrl	"Only add a query field if there isn't already a cookie"	self		cookieFromContext: self requestContext		ifAbsent: [ self addQueryFieldWithValue: aString to: aUrl ]!

noHandlerFoundForKey: aString in: anApplication context: aRequestContext	| queryFieldKey |	queryFieldKey := self queryFieldKeyFromContext: aRequestContext.	queryFieldKey isNil		ifTrue: [			| cookie |			"there is no query field -> a cookie was used for the look up -> delete it"			cookie := self cookieFromContext: aRequestContext ifAbsent: [ nil ].			cookie notNil ifTrue: [				"If there is a cookie delete it.				Unfortunately if the browser doesn't support cookies then an expired document handler will result in the session cookie being deleted."				self deleteSessionCookieOf: anApplication from: aRequestContext ] ]		ifFalse: [			| cookie |			cookie := self cookieFromContext: aRequestContext ifAbsent: [ nil ].			(cookie notNil and: [ cookie value = queryFieldKey ]) ifTrue: [				"A query field was used for the look up but there is also a cookie with the same value -> delete it"				self deleteSessionCookieOf: anApplication from: aRequestContext ] ].	super noHandlerFoundForKey: aString in: anApplication context: aRequestContext! !

!WACookieIfSupportedSessionTrackingStrategy categoriesForMethods!
addKey:toUrl:!public! !
noHandlerFoundForKey:in:context:!public! !
!

