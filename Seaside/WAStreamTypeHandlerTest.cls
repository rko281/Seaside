"Filed out from Dolphin Smalltalk 7"!

WAContextTest subclass: #WAStreamTypeHandlerTest
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAStreamTypeHandlerTest guid: (GUID fromString: '{d686be52-6545-4754-9f5e-95435cd70118}')!
WAStreamTypeHandlerTest comment: ''!
!WAStreamTypeHandlerTest categoriesForClass!Seaside-Tests-REST-Core! !
!WAStreamTypeHandlerTest methodsFor!

assertPerformGetTo: aCollectionOfStrings equals: aCollection contentType: aMimeType	| requestUrl request response context |	requestUrl := WAUrl new		addAllToPath: aCollectionOfStrings;		yourself.	request := WARequest		method: 'GET'		uri: requestUrl.	response := WABufferedResponse new.			context := WARequestContext request: request response: response.	[ handler handle: context ]		on: WAResponseNotification		do: [ :n | ].		self assert: response contents = aCollection.	aMimeType isNil ifFalse: [		self assert: response contentType = aMimeType.		self assert: response contentType greaseString = aMimeType greaseString ]!

setUp	super setUp.	handler := WAStreamTypeHandler new!

testFaviconIco	self assertPerformGetTo: #('favicon.ico') equals: handler faviconIco contentType: nil!

testIndex	self assertPerformGetTo: #('index') equals: handler index contentType: nil!

testRobotsTxt	self assertPerformGetTo: #('robots.txt') equals: handler robotsTxt contentType: (WAMimeType fromString: 'text/plain;charset=utf-8')!

testStarGif	self assertPerformGetTo: #('star.gif') equals: handler starGif contentType: (WAMimeType fromString: 'image/gif')! !
!WAStreamTypeHandlerTest categoriesFor: #assertPerformGetTo:equals:contentType:!private! !
!WAStreamTypeHandlerTest categoriesFor: #setUp!public!running! !
!WAStreamTypeHandlerTest categoriesFor: #testFaviconIco!public!tests! !
!WAStreamTypeHandlerTest categoriesFor: #testIndex!public!tests! !
!WAStreamTypeHandlerTest categoriesFor: #testRobotsTxt!public!tests! !
!WAStreamTypeHandlerTest categoriesFor: #testStarGif!public!tests! !

