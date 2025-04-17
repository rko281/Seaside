"Filed out from Dolphin Smalltalk"!

WACookieIfSupportedSessionTrackingStrategy subclass: #WAEnterpriseAuberginesStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAEnterpriseAuberginesStrategy guid: (GUID fromString: '{ce821859-6a4b-4cd8-929e-cf15c3ed2f05}')!

WAEnterpriseAuberginesStrategy comment: 'I implement a session tracking strategy that emulates common JavaEE application servers (Tomcat, WildFly AS). I am similar to WACookieIfSupportedSessionTrackingStrategy.I will do the following- add a cookie named JSESSIONID- add a path parameter named jsessionid until we see a cookie, eg. /;jsessionid=1234?_k=5678'!

!WAEnterpriseAuberginesStrategy categoriesForClass!Tracking! !

!WAEnterpriseAuberginesStrategy methodsFor!

addKey: aString toUrl: aUrl	"Only add a query field if there isn't already a cookie"	self		cookieFromContext: self requestContext		ifAbsent: [ self addPathParameterWithValue: aString to: aUrl ]!

deleteOldOrConflictingCookieIn: anApplication context: aRequestContext	| cookie queryFieldKey |	cookie := self cookieFromContext: aRequestContext ifAbsent: [ nil ].	queryFieldKey := self queryFieldKeyFromContext: aRequestContext.	(cookie notNil and: [ queryFieldKey isNil or: [ cookie value = queryFieldKey ] ]) ifTrue: [		"A query field was used for the look up but there is also a cookie with the same value -> delete it"		self deleteSessionCookieOf: anApplication from: aRequestContext ]!

keyCookieName	"Coolie is ALL CAPS"		^ 'JSESSIONID'!

keyField	"Parameter is lower case"		^ 'jsessionid'!

keyFromContext: aRequestContext	"If a query field is present it overrides a cookie."	| key |	key := self pathParameterKeyFromContext: aRequestContext.	^ key isNil		ifTrue: [ (self cookieFromContext: aRequestContext ifAbsent: [ ^ nil ]) value ]		ifFalse: [ key ]!

noHandlerFoundForKey: aString in: anApplication context: aRequestContext	self deleteOldOrConflictingCookieIn: anApplication context: aRequestContext.	super noHandlerFoundForKey: aString in: anApplication context: aRequestContext! !

!WAEnterpriseAuberginesStrategy categoriesForMethods!
addKey:toUrl:!public! !
deleteOldOrConflictingCookieIn:context:!private! !
keyCookieName!private! !
keyField!private! !
keyFromContext:!public! !
noHandlerFoundForKey:in:context:!public! !
!

