"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WARegistryKeyHandlingTest
	instanceVariableNames: 'registry registrySize'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARegistryKeyHandlingTest guid: (GUID fromString: '{97d5bd74-e1a9-4e62-ac19-2ffbae0612fc}')!

WARegistryKeyHandlingTest comment: ''!

!WARegistryKeyHandlingTest categoriesForClass!RequestHandling! !

!WARegistryKeyHandlingTest methodsFor!

assertCookieAddition: aResponse	| cookie |	self assert: aResponse cookies size = 1.	cookie := aResponse cookies first.	self assert: cookie path = self path.	self assert: cookie key = self cookieKey.	self assert: cookie discard!

assertCookieAddition: aResponse key: aString	self assertCookieAddition: aResponse.	self assert: aResponse cookies first value = aString!

assertCookieDeletion: aResponse	| cookie |	self assert: aResponse cookies size = 1.	cookie := aResponse cookies first.	self assert: cookie path = self path.	self assert: cookie key = self cookieKey.	self assert: cookie expiry < (DateAndTime now - (Duration days: 1 hours: 0 minutes: 0 seconds: 0)).	self deny: cookie discard!

assertDefault: aResponse	self assert: registry cache size = registrySize.	self assert: aResponse status = 404!

assertDispatched: aResponse	self assert: registry cache size = registrySize.	self assert: aResponse status = 200!

assertExpired: aResponse	self assert: registry cache size = registrySize.	self assert: aResponse status = 302.	self assert: (aResponse headers at: 'Location') greaseString = self path!

assertNoCookies: aResponse	self assert: aResponse cookies isEmpty!

cookieKey	^ self fieldName!

createRegistry	^ WADispatcher new		register: (WARedirectingRegistry new			cache: WABidirectionalCache new;			yourself)		at: self registryName!

createRegistryWithCookiesEnabled	"We have an instance variable named 'registry' and GemStone does not like 		method temps to have the same name as instance variables."	| newRegistry |	newRegistry := self createRegistry.	newRegistry configuration at: #trackingStrategy put: WACookieIfSupportedSessionTrackingStrategy new.	^ newRegistry!

createRequestContextWithFieldKey: fieldString cookieKey: cookieString	| fields cookies request |	fields := WARequestFields new.	fieldString isNil ifFalse: [ fields at: self fieldName put: fieldString ].	cookies := OrderedCollection new.	cookieString isNil ifFalse: [		| cookie |		cookie := (WARequestCookie key: self cookieKey value: cookieString)			pathUnencoded: self path encoded: self path;			yourself.		cookies add: cookie ].	request := (WARequest method: 'GET' uri: self path)		setPostFields: fields;		setCookies: cookies;		yourself.	^ WARequestContext request: request response: WABufferedResponse new!

dispatch: aRequestContext to: aRegistry	registrySize := aRegistry cache size.	self assert: aRequestContext consumer next = self registryName.	[ aRegistry handle: aRequestContext ]		on: WAResponseNotification		do: [ :n | ].			^ aRequestContext response!

fieldName	^ '_s'!

path	^ '/', self registryName!

registerNewHandler	^ registry register: WATestNoopRequestHandler new!

registryName	^ 'test'!

testCookiesDisabledFieldNoCookieHandlerAbsent	"Cookies are DISABLED.	There is a key in the URL, no cookie, but handler specified by key does not exist"		| response context |	registry := self createRegistry.	context := self createRequestContextWithFieldKey: '123' cookieKey: nil.	response := self dispatch: context to: registry.		"Behaviour should be the same as #testFieldNoCookieHandlerAbsent"	self assertNoCookies: response.	self assertExpired: response!

testCookiesDisabledFieldNoCookieHandlerPresent	"Cookies are DISABLED.	There is a key in the URL but no cookie. The handler specified by key exists."		| response context key |	registry := self createRegistry.	key := self registerNewHandler.	context := self createRequestContextWithFieldKey: key cookieKey: nil.	response := self dispatch: context to: registry.		self assertNoCookies: response.	self assertDispatched: response!

testCookiesDisabledMatchingHandlerAbsent	"Cookies are DISABLED.	There is a key in the URL and a cookie and the values match. However, the handler specified by key does not exist."		| response context |	registry := self createRegistry.	context := self createRequestContextWithFieldKey: '123' cookieKey: '123'.	response := self dispatch: context to: registry.		"Behaviour should be the same as #testFieldNoCookieHandlerAbsent."	self assertNoCookies: response.	self assertExpired: response!

testCookiesDisabledMatchingHandlerPresent	"Cookies are DISABLED.	There is a key in the URL and a cookie and the values match. The handler specified by key exists."		| response context key |	registry := self createRegistry.	key := self registerNewHandler.	context := self createRequestContextWithFieldKey: key cookieKey: key.	response := self dispatch: context to: registry.		"Behaviour should be the same as #testFieldNoCookieHandlerPresent."	self assertNoCookies: response.	self assertDispatched: response!

testCookiesDisabledMismatchingWithBothHandlers	"Cookies are DISABLED.	There is a key in the URL and a cookie but values do not match.	Both keys have registered handlers associated with them."		| response context urlKey cookieKey |	registry := self createRegistry.	urlKey := self registerNewHandler.	cookieKey := self registerNewHandler.	context := self createRequestContextWithFieldKey: urlKey cookieKey: cookieKey.	response := self dispatch: context to: registry.		"Behaviour should be the same as #testCookiesDisabledFieldNoCookieHandlerPresent."	self assertNoCookies: response.	self assertDispatched: response!

testCookiesDisabledMismatchingWithCookieHandler	"Cookies are DISABLED.	There is a key in the URL and a cookie but values do not match.	There is no handler registered at the URL key but there is one at the cookie key."		| response context key |	registry := self createRegistry.	key := self registerNewHandler.	context := self createRequestContextWithFieldKey: '123' cookieKey: key.	response := self dispatch: context to: registry.		"Behaviour should be the same as #testCookiesDisabledFieldNoCookieHandlerAbsent."	self assertNoCookies: response.	self assertExpired: response!

testCookiesDisabledMismatchingWithNoHandlers	"Cookies are DISABLED.	There is a key in the URL and a cookie but values do not match.	There is no handler registered at either key."		| response context |	registry := self createRegistry.	context := self createRequestContextWithFieldKey: '123' cookieKey: '456'.	response := self dispatch: context to: registry.		"Behaviour should be the same as #testCookiesDisabledFieldNoCookieHandlerAbsent."	self assertNoCookies: response.	self assertExpired: response!

testCookiesDisabledMismatchingWithUrlHandler	"Cookies are DISABLED.	There is a key in the URL and a cookie but values do not match.	There is a handler registered at the URL key but not at the cookie key."		| response context key |	registry := self createRegistry.	key := self registerNewHandler.	context := self createRequestContextWithFieldKey: key cookieKey: '123'.	response := self dispatch: context to: registry.		"Behaviour should be the same as #testCookiesDisabledFieldNoCookieHandlerPresent."	self assertNoCookies: response.	self assertDispatched: response!

testCookiesDisabledNoFieldCookieHandlerAbsent	"Cookies are DISABLED.	There is no key in the URL but there is a cookie. However, the handler specified by key does not exist."		| response context |	registry := self createRegistry.	context := self createRequestContextWithFieldKey: nil cookieKey: '123'.	response := self dispatch: context to: registry.		"Behaviour should be the same as #testNoKey."	self assertNoCookies: response.	self assertDefault: response!

testCookiesDisabledNoFieldCookieHandlerPresent	"Cookies are DISABLED.	There is no key in the URL but there is a cookie. The handler specified by key exists."		| response context key |	registry := self createRegistry.	key := self registerNewHandler.	context := self createRequestContextWithFieldKey: nil cookieKey: key.	response := self dispatch: context to: registry.		"Behaviour should be the same as #testNoKey."	self assertNoCookies: response.	self assertDefault: response!

testCookiesDisabledNoKey	"Cookies are DISABLED.	There is no URL field and no cookie. This is a new request to the Registry."		| response context |	registry := self createRegistry.	context := self createRequestContextWithFieldKey: nil cookieKey: nil.	response := self dispatch: context to: registry.		"Behaviour should be the same as #testNoKey."	self assertNoCookies: response.	self assertDefault: response!

testNoKey	"Cookies are DISABLED.	There is no URL field and no cookie. This is a new request to the Registry."		| response context |	registry := self createRegistry.	context := self createRequestContextWithFieldKey: nil cookieKey: nil.	response := self dispatch: context to: registry.		self assertNoCookies: response.	self assertDefault: response! !

!WARegistryKeyHandlingTest categoriesForMethods!
assertCookieAddition:!private! !
assertCookieAddition:key:!private! !
assertCookieDeletion:!private! !
assertDefault:!private! !
assertDispatched:!private! !
assertExpired:!private! !
assertNoCookies:!private! !
cookieKey!private! !
createRegistry!private! !
createRegistryWithCookiesEnabled!private! !
createRequestContextWithFieldKey:cookieKey:!private! !
dispatch:to:!private! !
fieldName!private! !
path!private! !
registerNewHandler!private! !
registryName!private! !
testCookiesDisabledFieldNoCookieHandlerAbsent!public!tests! !
testCookiesDisabledFieldNoCookieHandlerPresent!public!tests! !
testCookiesDisabledMatchingHandlerAbsent!public!tests! !
testCookiesDisabledMatchingHandlerPresent!public!tests! !
testCookiesDisabledMismatchingWithBothHandlers!public!tests! !
testCookiesDisabledMismatchingWithCookieHandler!public!tests! !
testCookiesDisabledMismatchingWithNoHandlers!public!tests! !
testCookiesDisabledMismatchingWithUrlHandler!public!tests! !
testCookiesDisabledNoFieldCookieHandlerAbsent!public!tests! !
testCookiesDisabledNoFieldCookieHandlerPresent!public!tests! !
testCookiesDisabledNoKey!public!tests! !
testNoKey!public!tests! !
!

