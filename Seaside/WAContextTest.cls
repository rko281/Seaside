"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAContextTest
	instanceVariableNames: 'requestContext'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAContextTest guid: (GUID fromString: '{c4c321ec-d514-45a6-b897-741e5a2e4e02}')!
WAContextTest comment: 'I am the base class for all tests that need a WARequestContext present.'!
!WAContextTest categoriesForClass!Seaside-Tests-Core-RequestHandling! !
!WAContextTest methodsFor!

createCodec	^ GRNullCodec new!

createHandlers	^ #()!

createRequest	^ WARequest new!

createRequestContext	^ WARequestContext request: self createRequest response: self createResponse codec: self createCodec!

createResponse	^ WABufferedResponse new!

performTest	requestContext := self createRequestContext.	WACurrentRequestContext 		use: self requestContext		during: [			self				pushAll: self createHandlers				during: [ super performTest ] ]!

pushAll: aCollection during: aBlock	^ aCollection isEmpty		ifTrue: [ aBlock value ]		ifFalse: [			self requestContext				push: aCollection first				during: [ self pushAll: aCollection allButFirst during: aBlock ] ]!

requestContext	^ requestContext!

requestContextWithUrl: aUrlOrString	self requestContextWithUrl: aUrlOrString cookies: Array new!

requestContextWithUrl: aUrlOrString cookies: aCollection	| handlers |	handlers := self requestContext handlers.	self requestContext		initializeWithRequest: 			((WARequest method: 'GET' uri: aUrlOrString)				setCookies: aCollection asArray;				yourself)		response: WABufferedResponse new		codec: self createCodec.	self requestContext handlers addAll: handlers!

responseAfter: aBlock	self requestContext response initialize.	aBlock on: WAResponseNotification do: [ :n | ].	^ self requestContext response! !
!WAContextTest categoriesFor: #createCodec!configuration!public! !
!WAContextTest categoriesFor: #createHandlers!configuration!public! !
!WAContextTest categoriesFor: #createRequest!configuration!public! !
!WAContextTest categoriesFor: #createRequestContext!configuration!public! !
!WAContextTest categoriesFor: #createResponse!configuration!public! !
!WAContextTest categoriesFor: #performTest!public!running! !
!WAContextTest categoriesFor: #pushAll:during:!private! !
!WAContextTest categoriesFor: #requestContext!accessing!public! !
!WAContextTest categoriesFor: #requestContextWithUrl:!public!utilities! !
!WAContextTest categoriesFor: #requestContextWithUrl:cookies:!public!utilities! !
!WAContextTest categoriesFor: #responseAfter:!public!utilities! !

!WAContextTest class methodsFor!

isAbstract	^ self name = #WAContextTest! !
!WAContextTest class categoriesFor: #isAbstract!public!testing! !

