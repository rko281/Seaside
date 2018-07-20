"Filed out from Dolphin Smalltalk 7"!

WARegistryTest subclass: #WASessionCookieTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASessionCookieTest guid: (GUID fromString: '{f21a1c90-5f95-440e-92a6-b26b4b9f54e0}')!
WASessionCookieTest comment: ''!
!WASessionCookieTest categoriesForClass!Seaside-Tests-Session! !
!WASessionCookieTest methodsFor!

newHandler	^ WAApplication new		preferenceAt: #trackingStrategy put: WACookieIfSupportedSessionTrackingStrategy new;		preferenceAt: #serverHostname put: 'www.seaside.st';		yourself!

requestWithMethod: aString	^ WARequest		method: aString		uri: '/'!

testDeleteSessionCookieDomain	| context request response cookie |	request := self requestWithMethod: 'GET'.	request setCookies: (Array with: (WARequestCookie key: '_s' value: 'goner')).	response := WABufferedResponse new.	context := WARequestContext request: request response: response.	[ handler handle: context ]		on: WAResponseNotification		do: [ :notification | ].	self assert: response status = 302. "session gone"	self assert: response cookies size = 1.	cookie := response cookies first.	self assert: cookie domain = 'www.seaside.st'!

testNewSessionCookieDomain	| context request response cookie |	request := self requestWithMethod: 'GET'.	response := WABufferedResponse new.	context := WARequestContext request: request response: response.	[ handler handle: context ]		on: WAResponseNotification		do: [ :notification | ].	self assert: response cookies size = 1.	cookie := response cookies first.	self assert: cookie domain = 'www.seaside.st'! !
!WASessionCookieTest categoriesFor: #newHandler!private! !
!WASessionCookieTest categoriesFor: #requestWithMethod:!public!running! !
!WASessionCookieTest categoriesFor: #testDeleteSessionCookieDomain!public!tests! !
!WASessionCookieTest categoriesFor: #testNewSessionCookieDomain!public!tests! !

!WASessionCookieTest class methodsFor!

shouldInheritSelectors	^ true! !
!WASessionCookieTest class categoriesFor: #shouldInheritSelectors!public!testing! !

