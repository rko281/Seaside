"Filed out from Dolphin Smalltalk 7"!

WAContextTest subclass: #WARestfulHandlerTest
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARestfulHandlerTest guid: (GUID fromString: '{5d781b3f-3fde-4fbb-9a63-e8edd32822c2}')!
WARestfulHandlerTest comment: ''!
!WARestfulHandlerTest categoriesForClass!Seaside-Tests-REST-Core! !
!WARestfulHandlerTest methodsFor!

setUp	super setUp.	handler := WAStubHandler new!

testFindRouteForMethodConsumerIfAbsent	| route result requestUrl request context |	requestUrl := WAUrl new		addAllToPath: #('users' 'marschall');		yourself.	request := WARequest		method: 'GET'		uri: requestUrl.	context := WARequestContext request: request response: WAResponse new.	result := handler routeForContext: context ifAbsent: [ self assert: false ].	route := result route.	self assert: route method = 'GET'.	self assert: route pathElementCount = 2.	self assert: route selector = #getDatabase:document:.	self assert: result elements = #('users' 'marschall').	self assert: context consumer atEnd! !
!WARestfulHandlerTest categoriesFor: #setUp!public!running! !
!WARestfulHandlerTest categoriesFor: #testFindRouteForMethodConsumerIfAbsent!public!tests! !

