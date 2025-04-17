"Filed out from Dolphin Smalltalk"!

WACookieSessionTrackingStrategyTest subclass: #WACookieIfSupportedSessionTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACookieIfSupportedSessionTrackingStrategyTest guid: (GUID fromString: '{9d96d1f5-939e-401c-9737-2c3870d7942f}')!

WACookieIfSupportedSessionTrackingStrategyTest comment: ''!

!WACookieIfSupportedSessionTrackingStrategyTest categoriesForClass!Unclassified! !

!WACookieIfSupportedSessionTrackingStrategyTest methodsFor!

newStrategy	^ WACookieIfSupportedSessionTrackingStrategy new!

testAddKeyOfSessionToUrl	| context uri |	context := self requestContext.	uri := context request uri copy.	strategy addKey: 'The_Metaphor' toUrl: uri.	self assert: uri greaseString = '/1/2?_s=The_Metaphor'!

testAddKeyOfSessionToUrlCookieAlreadyPresent	| context uri cookie1 |	context := self requestContext.	cookie1 := WARequestCookie key: strategy keyCookieName value: 'The_Metaphor'.	context request setCookies: (Array with: cookie1).	uri := context request uri copy.	strategy addKey: 'The_Metaphor' toUrl: uri.	self assert: uri greaseString = '/1/2'! !

!WACookieIfSupportedSessionTrackingStrategyTest categoriesForMethods!
newStrategy!private! !
testAddKeyOfSessionToUrl!public!tests! !
testAddKeyOfSessionToUrlCookieAlreadyPresent!public!tests! !
!

