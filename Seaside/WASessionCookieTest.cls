"Filed out from Dolphin Smalltalk"!

WARegistryTest subclass: #WASessionCookieTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASessionCookieTest guid: (GUID fromString: '{4b34ae4c-5a86-4358-86e1-6641bf0412c4}')!

WASessionCookieTest comment: ''!

!WASessionCookieTest categoriesForClass!Seaside-Tests-Session! !

!WASessionCookieTest methodsFor!

newHandler	^ WARedirectingApplication new		preferenceAt: #trackingStrategy put: WACookieIfSupportedSessionTrackingStrategy new;		preferenceAt: #serverHostname put: 'www.seaside.st';		yourself!

requestWithMethod: aString	^ WARequest		method: aString		uri: '/'!

testDeleteSessionCookieDomain	| context request response cookie |	request := self requestWithMethod: 'GET'.	request setCookies: (Array with: (WARequestCookie key: '_s' value: 'goner')).	response := WABufferedResponse new.	context := WARequestContext request: request response: response.	[ handler handle: context ]		on: WAResponseNotification		do: [ :notification | ].	self assert: response status = 302. "session gone"	self assert: response cookies size = 1.	cookie := response cookies first.	self assert: cookie domain = 'www.seaside.st'!

testNewSessionCookieDomain	| context request response cookie |	request := self requestWithMethod: 'GET'.	response := WABufferedResponse new.	context := WARequestContext request: request response: response.	[ handler handle: context ]		on: WAResponseNotification		do: [ :notification | ].	self assert: response cookies size = 1.	cookie := response cookies first.	self assert: cookie domain = 'www.seaside.st'! !

!WASessionCookieTest categoriesForMethods!
newHandler!private! !
requestWithMethod:!public!running! !
testDeleteSessionCookieDomain!public!tests! !
testNewSessionCookieDomain!public!tests! !
!

!WASessionCookieTest class methodsFor!

shouldInheritSelectors	^ true! !

!WASessionCookieTest class categoriesForMethods!
shouldInheritSelectors!public!testing! !
!

