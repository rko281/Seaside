"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WARestfulFilterTest
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARestfulFilterTest guid: (GUID fromString: '{3b4e5252-bc79-49c3-b141-e591bfab58bb}')!

WARestfulFilterTest comment: ''!

!WARestfulFilterTest categoriesForClass!Seaside-Tests-REST-Core! !

!WARestfulFilterTest methodsFor!

setUp	super setUp.	handler := WAStubFilter new!

testFindRouteForMethodConsumerIfAbsent	| route result requestUrl request context |	requestUrl := WAUrl new		addAllToPath: #('users' 'marschall');		yourself.	request := WARequest		method: 'GET'		uri: requestUrl.	context := WARequestContext request: request response: WAResponse new.	result := handler routeForContext: context ifAbsent: [ self assert: false ].	route := result route.	self assert: route method = 'GET'.	self assert: route pathElementCount = 2.	self assert: route selector = #getDatabase:document:.	self assert: result elements = #('users' 'marschall').	self deny: context consumer atEnd! !

!WARestfulFilterTest categoriesForMethods!
setUp!public!running! !
testFindRouteForMethodConsumerIfAbsent!public!tests! !
!

