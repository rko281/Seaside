"Filed out from Dolphin Smalltalk"!

WARegistryKeyHandlingTest subclass: #WAApplicationKeyHandlingTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAApplicationKeyHandlingTest guid: (GUID fromString: '{dc62b526-72da-46ed-95b9-b7a0ff2e80ff}')!

WAApplicationKeyHandlingTest comment: ''!

!WAApplicationKeyHandlingTest categoriesForClass!Unclassified! !

!WAApplicationKeyHandlingTest methodsFor!

assertDefault: aResponse	"Instead of returning 404 on a default request as WARegistry does, WAApplication creates a new	Session and dispatches to it."	self assert: registry cache size = (registrySize + 1).	self assert: aResponse status = 200.	self assert: (aResponse contents beginsWithSubCollection: 'start:')!

createRegistry	^ WADispatcher new		register: (WARedirectingApplication new			sessionClass: WATestSession;			cache: WAUnidirectionalCache new;			yourself)		at: self registryName!

registerNewHandler	^ registry register: WATestNoopSessionHandler new!

testFieldNoCookieHandlerAbsent	"There is a key in the URL, no cookie, but handler specified by key does not exist"		| response context |	registry := self createRegistryWithCookiesEnabled.	context := self createRequestContextWithFieldKey: '123' cookieKey: nil.	response := self dispatch: context to: registry.		self assertNoCookies: response.	self assertExpired: response!

testFieldNoCookieHandlerPresent	"There is a key in the URL but no cookie. The handler specified by key exists."		| response context key |	registry := self createRegistryWithCookiesEnabled.	key := self registerNewHandler.	context := self createRequestContextWithFieldKey: key cookieKey: nil.	response := self dispatch: context to: registry.		self assertCookieAddition: response key: key.	self assertDispatched: response!

testMatchingHandlerAbsent	"There is a key in the URL and a cookie and the values match. However, the handler specified by key does not exist."		| response context |	registry := self createRegistryWithCookiesEnabled.	context := self createRequestContextWithFieldKey: '123' cookieKey: '123'.	response := self dispatch: context to: registry.		self assertCookieDeletion: response.	self assertExpired: response!

testMatchingHandlerPresent	"There is a key in the URL and a cookie and the values match. The handler specified by key exists."		| response context key |	registry := self createRegistryWithCookiesEnabled.	key := self registerNewHandler.	context := self createRequestContextWithFieldKey: key cookieKey: key.	response := self dispatch: context to: registry.		self assertNoCookies: response.	self assertDispatched: response!

testMismatchingWithBothHandlers	"There is a key in the URL and a cookie but values do not match.	Both keys have registered handlers associated with them."		| response context urlKey cookieKey |	registry := self createRegistryWithCookiesEnabled.	urlKey := self registerNewHandler.	cookieKey := self registerNewHandler.	context := self createRequestContextWithFieldKey: urlKey cookieKey: cookieKey.	response := self dispatch: context to: registry.		self assertCookieAddition: response key: urlKey.	self assertDispatched: response!

testMismatchingWithCookieHandler	"There is a key in the URL and a cookie but values do not match.	There is no handler registered at the URL key but there is one at the cookie key."		| response context key |	registry := self createRegistryWithCookiesEnabled.	key := self registerNewHandler.	context := self createRequestContextWithFieldKey: '123' cookieKey: key.	response := self dispatch: context to: registry.		self assertNoCookies: response.	self assertExpired: response!

testMismatchingWithNoHandlers	"There is a key in the URL and a cookie but values do not match.	There is no handler registered at either key."		| response context |	registry := self createRegistryWithCookiesEnabled.	context := self createRequestContextWithFieldKey: '123' cookieKey: '456'.	response := self dispatch: context to: registry.		self assertNoCookies: response.	self assertExpired: response!

testMismatchingWithUrlHandler	"There is a key in the URL and a cookie but values do not match.	There is a handler registered at the URL key but not at the cookie key."		| response context key |	registry := self createRegistryWithCookiesEnabled.	key := self registerNewHandler.	context := self createRequestContextWithFieldKey: key cookieKey: '123'.	response := self dispatch: context to: registry.		self assertCookieAddition: response key: key.	self assertDispatched: response!

testNoFieldCookieHandlerAbsent	"There is no key in the URL but there is a cookie. However, the handler specified by key does not exist."		| response context |	registry := self createRegistryWithCookiesEnabled.	context := self createRequestContextWithFieldKey: nil cookieKey: '123'.	response := self dispatch: context to: registry.		self assertCookieDeletion: response.	self assertExpired: response!

testNoFieldCookieHandlerPresent	"There is no key in the URL but there is a cookie. The handler specified by key exists."		| response context key |	registry := self createRegistryWithCookiesEnabled.	key := self registerNewHandler.	context := self createRequestContextWithFieldKey: nil cookieKey: key.	response := self dispatch: context to: registry.		self assertNoCookies: response.	self assertDispatched: response!

testNoKey	"There is no URL field and no cookie. This is a new request to the Registry.		Instead of returning a 404, like WARegistry does, WAApplication creates a new WASession	and also adds the cookie."		| response context |	registry := self createRegistryWithCookiesEnabled.	context := self createRequestContextWithFieldKey: nil cookieKey: nil.	response := self dispatch: context to: registry.		self assertCookieAddition: response.	self assert: ((registry cache at: response cookies first value ifAbsent: [ nil ]) isKindOf: WASession).	self assertDefault: response! !

!WAApplicationKeyHandlingTest categoriesForMethods!
assertDefault:!private! !
createRegistry!private! !
registerNewHandler!private! !
testFieldNoCookieHandlerAbsent!public!tests! !
testFieldNoCookieHandlerPresent!public!tests! !
testMatchingHandlerAbsent!public!tests! !
testMatchingHandlerPresent!public!tests! !
testMismatchingWithBothHandlers!public!tests! !
testMismatchingWithCookieHandler!public!tests! !
testMismatchingWithNoHandlers!public!tests! !
testMismatchingWithUrlHandler!public!tests! !
testNoFieldCookieHandlerAbsent!public!tests! !
testNoFieldCookieHandlerPresent!public!tests! !
testNoKey!public!tests! !
!

!WAApplicationKeyHandlingTest class methodsFor!

shouldInheritSelectors	^ true! !

!WAApplicationKeyHandlingTest class categoriesForMethods!
shouldInheritSelectors!public!testing! !
!

