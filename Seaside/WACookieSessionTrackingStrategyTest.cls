"Filed out from Dolphin Smalltalk"!

WASessionTrackingStrategyTest subclass: #WACookieSessionTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACookieSessionTrackingStrategyTest guid: (GUID fromString: '{7efc1cdd-01fd-4cad-8ccc-68e0aa06b148}')!

WACookieSessionTrackingStrategyTest comment: ''!

!WACookieSessionTrackingStrategyTest categoriesForClass!Unclassified! !

!WACookieSessionTrackingStrategyTest methodsFor!

assertNotFound: aRequestContext	self assert: aRequestContext response status = WAResponse statusFound.	self assert: (aRequestContext response headerAt: 'Location') greaseString = '/1/2'!

createRequest	^ WARequest method: 'GET' uri: '/1/2'!

testAddCookieNonePresentYet	| context |	context := self requestContext.	strategy addKey: 'The_Metaphor' toContext: context.	self assertCookieInContext: context withValue: 'The_Metaphor'!

testAddCookieOneAlreadyPresent	| context cookie1 |	cookie1 := WARequestCookie key: strategy keyCookieName value: 'The_Metaphor'.	context := self requestContext.	context request setCookies: (Array with: cookie1).		strategy addKey: 'The_Metaphor' toContext: context.	self assertNoCookies: context!

testAddCookieOneAlreadyPresentWithWrongValue	| context cookie1 |	cookie1 := WARequestCookie key: strategy keyCookieName value: 'The_Abstraction'.	context := self requestContext.	context request setCookies: (Array with: cookie1).		strategy addKey: 'The_Metaphor' toContext: context.	self assertCookieInContext: context withValue: 'The_Metaphor'!

testEmpty	| key |	key := strategy keyFromContext: self requestContext.	self assert: key isNil!

testNoHandlerFoundForKey	| context notified |	context := self requestContext.	notified := false.	[ strategy		noHandlerFoundForKey: 'The_Birthday_Massacre'		in: self newApplication		context: context ]		on: WAResponseNotification		do: [ :notification | notified := true ].	self assert: notified.	self assertNotFound: context!

testOneOfMany	| cookie1 cookie2 cookie3 cookie4 actual context |	cookie1 := WARequestCookie key: strategy keyCookieName value: 'cookie1'.	cookie2 := (WARequestCookie key: strategy keyCookieName value: 'cookie2')		path: '/';		yourself.	cookie3 := (WARequestCookie key: strategy keyCookieName value: 'cookie3')		path: '/1/2';		yourself.	cookie4 := (WARequestCookie key: strategy keyCookieName value: 'cookie4')		path: '/1/2/3';		yourself.	context := self requestContext.	context request setCookies: (Array			with: cookie1			with: cookie2			with: cookie3			with: cookie4).		actual := strategy keyFromContext: context.	self assert: actual = 'cookie3'!

testOneOfManySlashInCookie	| cookie1 cookie2 cookie3 cookie4 actual context |	cookie1 := WARequestCookie key: strategy keyCookieName value: 'cookie1'.	cookie2 := (WARequestCookie key: strategy keyCookieName value: 'cookie2')		path: '/';		yourself.	cookie3 := (WARequestCookie key: strategy keyCookieName value: 'cookie3')		path: '/1/2/';		yourself.	cookie4 := (WARequestCookie key: strategy keyCookieName value: 'cookie4')		path: '/1/2/3/';		yourself.	context := self requestContext.	context request setCookies: (Array			with: cookie1			with: cookie2			with: cookie3			with: cookie4).	actual := strategy keyFromContext: context.	self assert: actual = 'cookie3'!

testOneOfManySlashInUrl	| cookie1 cookie2 cookie3 cookie4 actual context |	cookie1 := WARequestCookie key: strategy keyCookieName value: 'cookie1'.	cookie2 := (WARequestCookie key: strategy keyCookieName value: 'cookie2')		path: '/';		yourself.	cookie3 := (WARequestCookie key: strategy keyCookieName value: 'cookie3')		path: '/1/2';		yourself.	cookie4 := (WARequestCookie key: strategy keyCookieName value: 'cookie4')		path: '/1/2/3';		yourself.	context := self requestContext.	context request setCookies: (Array			with: cookie1			with: cookie2			with: cookie3			with: cookie4).	actual := strategy keyFromContext: context.	self assert: actual = 'cookie3'!

testOnlyOne	| cookie1 key context |	cookie1 := WARequestCookie key: strategy keyCookieName value: 'cookie1'.	context := self requestContext.	context request setCookies: (Array with: cookie1).		key := strategy keyFromContext: context.	self assert: key = 'cookie1'!

testQueryFieldOverridesCookie	| cookie1 key context |	cookie1 := WARequestCookie key: strategy keyCookieName value: 'cookie1'.	context := self requestContext.	context request setCookies: (Array with: cookie1).	context request uri addField: strategy keyField value: 'value1'. 		key := strategy keyFromContext: context.	self assert: key = 'value1'!

testWrongKey	| cookie context actual |	cookie := WARequestCookie key: (strategy keyCookieName, '-not') value: 'cookie'.	context := self requestContext.	context request setCookies: (Array with: cookie).	actual := strategy keyFromContext: context.	self assert: actual isNil!

testWrongPrefix	| cookie1 cookie2 actual context |	cookie1 := WARequestCookie key: strategy keyCookieName value: 'cookie1'.	cookie2 := (WARequestCookie key: strategy keyCookieName value: 'cookie2')		path: '/one';		yourself.	context := self requestContext.	context request setCookies: (Array			with: cookie1			with: cookie2).	actual := strategy keyFromContext: context.	self assert: actual = 'cookie1'! !

!WACookieSessionTrackingStrategyTest categoriesForMethods!
assertNotFound:!private! !
createRequest!private! !
testAddCookieNonePresentYet!public!tests! !
testAddCookieOneAlreadyPresent!public!tests! !
testAddCookieOneAlreadyPresentWithWrongValue!public!tests! !
testEmpty!public!tests! !
testNoHandlerFoundForKey!public!tests! !
testOneOfMany!public!tests! !
testOneOfManySlashInCookie!public!tests! !
testOneOfManySlashInUrl!public!tests! !
testOnlyOne!public!tests! !
testQueryFieldOverridesCookie!public!tests! !
testWrongKey!public!tests! !
testWrongPrefix!public!tests! !
!

!WACookieSessionTrackingStrategyTest class methodsFor!

isAbstract	^ self name = #WACookieSessionTrackingStrategyTest! !

!WACookieSessionTrackingStrategyTest class categoriesForMethods!
isAbstract!public!testing! !
!

