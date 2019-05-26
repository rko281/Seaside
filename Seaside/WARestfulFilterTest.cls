"Filed out from Dolphin Smalltalk 7"!

WAContextTest subclass: #WARestfulFilterTest
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARestfulFilterTest guid: (GUID fromString: '{0c669fe9-17cf-4472-badf-ccd06c395c8d}')!
WARestfulFilterTest comment: ''!
!WARestfulFilterTest categoriesForClass!Seaside-Tests-REST-Core! !
!WARestfulFilterTest methodsFor!

setUp	super setUp.	handler := WAStubFilter new!

testFindRouteForMethodConsumerIfAbsent	| route result requestUrl request context |	requestUrl := WAUrl new		addAllToPath: #('users' 'marschall');		yourself.	request := WARequest		method: 'GET'		uri: requestUrl.	context := WARequestContext request: request response: WAResponse new.	result := handler routeForContext: context ifAbsent: [ self assert: false ].	route := result route.	self assert: route method = 'GET'.	self assert: route pathElementCount = 2.	self assert: route selector = #getDatabase:document:.	self assert: result elements = #('users' 'marschall').	self deny: context consumer atEnd! !
!WARestfulFilterTest categoriesFor: #setUp!public!running! !
!WARestfulFilterTest categoriesFor: #testFindRouteForMethodConsumerIfAbsent!public!tests! !

