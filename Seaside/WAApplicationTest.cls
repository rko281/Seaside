"Filed out from Dolphin Smalltalk"!

WARegistryTest subclass: #WAApplicationTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAApplicationTest guid: (GUID fromString: '{f1d2a08c-6a95-4730-be7d-46ca559b9875}')!

WAApplicationTest comment: ''!

!WAApplicationTest categoriesForClass!Unclassified! !

!WAApplicationTest methodsFor!

newHandler	^ WAApplication new!

requestWithMethod: aString	^ WARequest		method: aString		uri: '/app/oneo'!

testNotImplemented	| context request |	#('OPTIONS' 'HEAD' 'PUT' 'DELETE' 'TRACE' 'CONNECT') do: [ :each |		request := self requestWithMethod: each.		context := WARequestContext request: request response: WABufferedResponse new.		[ handler handle: context ]			on: WAResponseNotification			do: [ :notification | ].		self assert: context response status = 501 ].		#('GET' 'POST') do: [ :each |		request := self requestWithMethod: each.		context := WARequestContext request: request response: WABufferedResponse new.		[ handler handle: context ]			on: WAResponseNotification			do: [ :notification | ].		self assert: context response status ~= 501 ]!

testPathConsumption	| context request |	request := self requestWithMethod: 'GET'.	context := WARequestContext request: request response: WABufferedResponse new.	context consumer next.	self assert: context consumer peek = 'oneo'.	[ handler handle: context ]		on: WAResponseNotification		do: [ :notification | ].	self assert: context consumer peek = 'oneo'!

testPreFetchIsForbidden	| context request |	request := self requestWithMethod: 'GET'.	request headers at: 'x-moz' put: 'prefetch'. "turn it into a prefetch request"	self assert: request isPrefetch.			context := WARequestContext request: request response: WABufferedResponse new.	[ handler handle: context ]		on: WAResponseNotification		do: [ :notification | "ignore" ].	self assert: context response status = WAResponse statusForbidden!

testUrlFor	| context request response session url |	handler class == WARegistry "only WARegistry supports tracking generic request handlers"		ifFalse: [ ^ self ].	request := self requestWithMethod: 'GET'.	request setCookies: (Array with: (WARequestCookie key: '_s' value: 'sessionid')).	response := WABufferedResponse new.	session := WASession new.		context := WARequestContext request: request response: response.	url := WACurrentRequestContext		use: context		during: [			handler register: session.			session url ].	self assert: (url queryFields includesKey: '_s').	request url addField: '_s' value: (url queryFields at: '_s').			[  handler handle: context ]		on: WAResponseNotification		do: [ :notification | ].			self assert: response status = 200.	self assert: (response cookies isEmpty)! !

!WAApplicationTest categoriesForMethods!
newHandler!private! !
requestWithMethod:!public!running! !
testNotImplemented!public!tests! !
testPathConsumption!public!tests! !
testPreFetchIsForbidden!public!tests! !
testUrlFor!public!tests! !
!

!WAApplicationTest class methodsFor!

shouldInheritSelectors	^ true! !

!WAApplicationTest class categoriesForMethods!
shouldInheritSelectors!public!testing! !
!

