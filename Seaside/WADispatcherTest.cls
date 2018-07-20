"Filed out from Dolphin Smalltalk 7"!

WARequestHandlerTest subclass: #WADispatcherTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADispatcherTest guid: (GUID fromString: '{7bf030d9-7945-4c06-a8f3-2dffb178b159}')!
WADispatcherTest comment: ''!
!WADispatcherTest categoriesForClass!Seaside-Tests-Core-RequestHandling! !
!WADispatcherTest methodsFor!

createRequest	^ WARequest		method: 'GET'		uri: '/tweets/kentbeck'!

newHandler	| child |	child := WADispatcher new.	child		register: WARequestHandler new at: 'foo';		register: (WADispatcher new					register: WARequestHandler new at: 'baz';					yourself) at: 'bar'.	^ child!

testCopyDispatcher	| copy originalHandler |	copy := handler copy.	self deny: copy == handler.	self assert: copy defaultName = handler defaultName.	self assert: copy handlers keys size = handler handlers keys size.	self assert: (copy handlers keys allSatisfy: [ :each | handler handlers keys includes: each ]).	self assert: (handler handlers keys allSatisfy: [ :each | copy handlers keys includes: each ]).	copy handlers		do: [ :each | 			originalHandler := handler handlerAt: each name.			self assert: each class == originalHandler class.			self deny: each == originalHandler.			each isDispatcher				ifTrue: [ self assert: each handlers keys = originalHandler handlers keys ] ]!

testEmptyPathConsumption	| root |	root := WADispatcher new.	dispatcher := root register: WADispatcher new at: 'tweets'.	handler := dispatcher register: WANextUnconsumedPathElementRequestHandler new at: 'kentbeck'.	[ root handle: self requestContext ]		on: WAResponseNotification		do: [ :notification | "everything is fine" ].	self assert: handler nextUnconsumedPathElement isNil!

testPathConsumption	dispatcher := WADispatcher new.	handler := dispatcher register: WANextUnconsumedPathElementRequestHandler new at: 'tweets'.	[ dispatcher handle: self requestContext ]		on: WAResponseNotification		do: [ :notification | "everything is fine" ].	self assert: handler nextUnconsumedPathElement = 'kentbeck'! !
!WADispatcherTest categoriesFor: #createRequest!configuration!public! !
!WADispatcherTest categoriesFor: #newHandler!private! !
!WADispatcherTest categoriesFor: #testCopyDispatcher!public!tests! !
!WADispatcherTest categoriesFor: #testEmptyPathConsumption!public!tests! !
!WADispatcherTest categoriesFor: #testPathConsumption!public!tests! !

