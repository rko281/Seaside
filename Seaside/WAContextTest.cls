"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAContextTest
	instanceVariableNames: 'requestContext'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAContextTest guid: (GUID fromString: '{a5008d9d-39b7-4f68-bf68-1bde12cf19de}')!

WAContextTest comment: 'I am the base class for all tests that need a WARequestContext present.'!

!WAContextTest categoriesForClass!Seaside-Tests-Core-RequestHandling! !

!WAContextTest methodsFor!

createCodec	^ GRNullCodec new!

createHandlers	^ #()!

createRequest	^ WARequest new!

createRequestContext	^ WARequestContext request: self createRequest response: self createResponse codec: self createCodec!

createResponse	^ WABufferedResponse new!

performTest	requestContext := self createRequestContext.	WACurrentRequestContext 		use: self requestContext		during: [			self				pushAll: self createHandlers				during: [ super performTest ] ]!

pushAll: aCollection during: aBlock	^ aCollection isEmpty		ifTrue: [ aBlock value ]		ifFalse: [			self requestContext				push: aCollection first				during: [ self pushAll: aCollection allButFirst during: aBlock ] ]!

requestContext	^ requestContext!

requestContextWithUrl: aUrlOrString	self requestContextWithUrl: aUrlOrString cookies: Array new!

requestContextWithUrl: aUrlOrString cookies: aCollection	| handlers |	handlers := self requestContext handlers.	self requestContext		initializeWithRequest: 			((WARequest method: 'GET' uri: aUrlOrString)				setCookies: aCollection asArray;				yourself)		response: WABufferedResponse new		codec: self createCodec.	self requestContext handlers addAll: handlers!

responseAfter: aBlock	self requestContext response initialize.	aBlock on: WAResponseNotification do: [ :n | ].	^ self requestContext response! !

!WAContextTest categoriesForMethods!
createCodec!configuration!public! !
createHandlers!configuration!public! !
createRequest!configuration!public! !
createRequestContext!configuration!public! !
createResponse!configuration!public! !
performTest!public!running! !
pushAll:during:!private! !
requestContext!accessing!public! !
requestContextWithUrl:!public!utilities! !
requestContextWithUrl:cookies:!public!utilities! !
responseAfter:!public!utilities! !
!

!WAContextTest class methodsFor!

isAbstract	^ self name = #WAContextTest! !

!WAContextTest class categoriesForMethods!
isAbstract!public!testing! !
!

