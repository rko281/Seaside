"Filed out from Dolphin Smalltalk 7"!

WACookieSessionTrackingStrategyTest subclass: #WACookieIfSupportedSessionTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACookieIfSupportedSessionTrackingStrategyTest guid: (GUID fromString: '{a496bc0f-c795-445d-b597-4f50ace28e4c}')!
WACookieIfSupportedSessionTrackingStrategyTest comment: ''!
!WACookieIfSupportedSessionTrackingStrategyTest categoriesForClass!Seaside-Tests-Session! !
!WACookieIfSupportedSessionTrackingStrategyTest methodsFor!

newStrategy	^ WACookieIfSupportedSessionTrackingStrategy new!

testAddKeyOfSessionToUrl	| context uri |	context := self requestContext.	uri := context request uri copy.	strategy addKey: 'The_Metaphor' toUrl: uri.	self assert: uri greaseString = '/1/2?_s=The_Metaphor'!

testAddKeyOfSessionToUrlCookieAlreadyPresent	| context uri cookie1 |	context := self requestContext.	cookie1 := WARequestCookie key: strategy keyCookieName value: 'The_Metaphor'.	context request setCookies: (Array with: cookie1).	uri := context request uri copy.	strategy addKey: 'The_Metaphor' toUrl: uri.	self assert: uri greaseString = '/1/2'! !
!WACookieIfSupportedSessionTrackingStrategyTest categoriesFor: #newStrategy!private! !
!WACookieIfSupportedSessionTrackingStrategyTest categoriesFor: #testAddKeyOfSessionToUrl!public!tests! !
!WACookieIfSupportedSessionTrackingStrategyTest categoriesFor: #testAddKeyOfSessionToUrlCookieAlreadyPresent!public!tests! !

