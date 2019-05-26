"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAMimeTypeStubHandlerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMimeTypeStubHandlerTest guid: (GUID fromString: '{7bbae5e0-1389-44d0-a3b3-ae84fffbe8c5}')!
WAMimeTypeStubHandlerTest comment: ''!
!WAMimeTypeStubHandlerTest categoriesForClass!Seaside-Tests-REST-Core! !
!WAMimeTypeStubHandlerTest methodsFor!

assertContentType: aMimeTypeStringOrNil accept: anAcceptStringOrNil produces: aProducedMimeTypeStringOrNil	| routes headers request context result |	routes := WAByMethodRoutes routes: (GRPlatform current createRoutesFor: WAMimeTypeStubHandler).	headers := GRSmallDictionary2 new.	aMimeTypeStringOrNil isNil ifFalse: [		headers at: 'content-type' put: aMimeTypeStringOrNil ].	anAcceptStringOrNil isNil ifFalse: [		headers at: 'accept' put: anAcceptStringOrNil ].	request := (WARequest method: 'GET' uri: 'index')		setHeaders: headers;		yourself.	context := WARequestContext request: request response: WAResponse new.	result := routes routeForContext: context consume: true ifAbsent: [ self assert: false ].	self assert: result seasideMimeType = (aProducedMimeTypeStringOrNil isNil		ifTrue: [ nil ]		ifFalse: [  WAMimeType fromString: aProducedMimeTypeStringOrNil ])!

assertContentType: aMimeTypeStringOrNil accept: anAcceptStringOrNil routesTo: aSymbol	| routes headers request context result |	routes := WAByMethodRoutes routes: (GRPlatform current createRoutesFor: WAMimeTypeStubHandler).	headers := GRSmallDictionary2 new.	aMimeTypeStringOrNil isNil ifFalse: [		headers at: 'content-type' put: aMimeTypeStringOrNil ].	anAcceptStringOrNil isNil ifFalse: [		headers at: 'accept' put: anAcceptStringOrNil ].	request := (WARequest method: 'GET' uri: 'index')		setHeaders: headers;		yourself.	context := WARequestContext request: request response: WAResponse new.	result := routes routeForContext: context consume: true ifAbsent: [ self assert: false ].	self assert: result route selector = aSymbol!

testMultipleConentTypeRouting	self assertContentType: 'foo/bar' accept: nil routesTo: #processTwo.	self assertContentType: 'zork/fnord' accept: nil routesTo: #processTwo!

testProduceMimeType	self assertContentType: nil accept: 'image/jpeg' produces: 'image/jpeg'.	self assertContentType: nil accept: 'image/png' produces: 'image/png'!

testProduceNoMimeType	self assertContentType: 'application/xml' accept: nil produces: nil!

testSimpleAcceptRouting	self assertContentType: nil accept: 'image/jpeg;q=0.8,image/png' routesTo: #producePng.	self assertContentType: nil accept: 'image/jpeg;q=0.8,image/png;q=0.9' routesTo: #producePng.	self assertContentType: nil accept: 'image/png,image/jpeg;q=0.8' routesTo: #producePng.	self assertContentType: nil accept: 'image/png;q=0.9,image/jpeg;q=0.8' routesTo: #producePng.		self assertContentType: '1/1' accept: 'image/png' routesTo: #producePng.	self assertContentType: '1/1' accept: 'image/png' routesTo: #producePng!

testSimpleConentTypeRouting	self assertContentType: 'application/xml' accept: nil routesTo: #processApplicationXml.	self assertContentType: 'text/xml' accept: nil routesTo: #processXml! !
!WAMimeTypeStubHandlerTest categoriesFor: #assertContentType:accept:produces:!private! !
!WAMimeTypeStubHandlerTest categoriesFor: #assertContentType:accept:routesTo:!private! !
!WAMimeTypeStubHandlerTest categoriesFor: #testMultipleConentTypeRouting!public!tests! !
!WAMimeTypeStubHandlerTest categoriesFor: #testProduceMimeType!public!tests! !
!WAMimeTypeStubHandlerTest categoriesFor: #testProduceNoMimeType!public!tests! !
!WAMimeTypeStubHandlerTest categoriesFor: #testSimpleAcceptRouting!public!tests! !
!WAMimeTypeStubHandlerTest categoriesFor: #testSimpleConentTypeRouting!public!tests! !

