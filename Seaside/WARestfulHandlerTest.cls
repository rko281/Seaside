"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WARestfulHandlerTest
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARestfulHandlerTest guid: (GUID fromString: '{a99d7c11-74ea-4da5-989c-c91ab79c651f}')!

WARestfulHandlerTest comment: ''!

!WARestfulHandlerTest categoriesForClass!Seaside-Tests-REST-Core! !

!WARestfulHandlerTest methodsFor!

setUp	super setUp.	handler := WAStubHandler new!

testFindRouteForMethodConsumerIfAbsent	| route result requestUrl request context |	requestUrl := WAUrl new		addAllToPath: #('users' 'marschall');		yourself.	request := WARequest		method: 'GET'		uri: requestUrl.	context := WARequestContext request: request response: WAResponse new.	result := handler routeForContext: context ifAbsent: [ self assert: false ].	route := result route.	self assert: route method = 'GET'.	self assert: route pathElementCount = 2.	self assert: route selector = #getDatabase:document:.	self assert: result elements = #('users' 'marschall').	self assert: context consumer atEnd! !

!WARestfulHandlerTest categoriesForMethods!
setUp!public!running! !
testFindRouteForMethodConsumerIfAbsent!public!tests! !
!

