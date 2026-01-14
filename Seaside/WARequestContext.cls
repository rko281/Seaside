"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WARequestContext
	instanceVariableNames: 'handlers request response codec consumer properties'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARequestContext guid: (GUID fromString: '{80715630-d610-4ebb-ad5c-43b26154aa28}')!

WARequestContext comment: 'WARequestContext encapsulates all the knowledge that should be available while processing a single request. It does not matter if this is a request to a static file, an AJAX request, a long Comet request or a normal Seaside requestion.The request context is valid only during the request that caused it. It should not be stored. Neither within instance variables, nor within the execution stack so that it might be captured by a continuation. In both cases this might lead to memory leaks.'!

!WARequestContext categoriesForClass!Seaside-Core-RequestHandling! !

!WARequestContext methodsFor!

charSet	"Answer the character set to be used for the response.	First try to take the one from the codec.	If it is a GRNullCodec take the one from the handler.	If there's no handler answer nil."	| codecName handler |	codecName := self codec name.	codecName = GRNullCodec codecName		ifFalse: [ ^ codecName ].	handler := self handler.	self handler isNil		ifFalse: [ ^ handler charSet ].	^ nil!

codec	"Answer the Codec that should be used when preparing strings to be returned in the Response."	^ codec!

consumer	"Answer the path consumer."		^ consumer!

destroy	"Clear references to objects when the receiver is no longer required. This helps avoid circular references and reduces memory consumption. This method is called by the WAServerAdaptor after request processing is finished."		self shouldDestroy ifTrue: [		self request destroy.		self response destroy.		handlers := request := response := codec := properties := nil ]!

dontDestroy	"Prevent any objects from being released.	For debug purposes"	self properties at: #shouldDestroy put: false!

handler	"Answer the current RequestHandler or nil."	^ self handlers isEmpty ifFalse: [ self handlers first ]!

handlers	"Answer an OrderedCollection of RequestHandlers that are processing this request. The list is ordered such that the most recent handler is first in the list."	^ handlers!

initializeWithRequest: aRequest response: aResponse codec: aCodec	self initialize.	handlers := OrderedCollection new.	request := aRequest.	response := aResponse.	codec := aCodec.	aRequest isNil ifFalse: [		consumer := WAPathConsumer path: aRequest url path copy ]!

newCookie	"Create a new cookie. Try to restrict it as much as possible to make stealing it as hard as possible. Some of these restrictions may be too severe for some applications, in which case the sender can relax them."		| cookie baseUrl |	baseUrl := self handler url.	cookie := WACookie new		pathUnencoded: baseUrl pathStringUnencoded		encoded: (baseUrl pathStringEncodedWith: self codec);		httpOnly: true;		yourself.	baseUrl host isNil ifFalse: [ cookie domain: baseUrl host ].	baseUrl scheme = 'https' ifTrue: [ cookie secure: true ].	(baseUrl port notNil and: [ baseUrl host notNil ]) ifTrue: [ cookie port: baseUrl port ].	^ cookie!

newDocument	"Answer a new Document configured to write onto our Response's stream using the	current Codec. Try to use the Document class specified by the closest Handler	but fall back on WAHtmlDocument if there is none."	^ self newDocumentOn: self response stream!

newDocumentOn: outputStream	"Answer a new Document configured to write onto outputStream using the	current Codec. Try to use the Document class specified by the closest Handler	but fall back on WAHtmlDocument if there is none."	^ self handler isNil		  ifTrue: [ 			  (WAHtmlDocument on: outputStream codec: self codec)				  scriptGenerator: WADefaultScriptGenerator new;				  yourself ]		  ifFalse: [ 			  (self handler documentClass on: outputStream codec: self codec)				  scriptGenerator: self handler scriptGeneratorClass new;				  yourself ]!

printOn: aStream 	super printOn: aStream.	self request isNil 		ifTrue: [ aStream nextPutAll: ' url: <nil>' ]		ifFalse: [			aStream				nextPutAll: ' url: ';				print: self request url greaseString ]!

properties	"Answer a dictionary of request-related properties."	^ properties ifNil: [ properties := GRSmallDictionary2 new ]!

push: aRequestHandler during: aBlock	"Push aRequestHandler onto the handler stack while evaluating aBlock."		handlers addFirst: aRequestHandler.	^ [ WACurrentRequestContext use: self during: aBlock ]		ensure: [ handlers removeFirst ]!

registry	"Answer the closest Registry or nil."	^ handlers 		detect: [ :each | each isRegistry ]		ifNone: [ nil ]!

request	"Answer the current Request object."		^ request!

respond	"Signal a desire to end request processing and return the current Response to the user agent."		WAResponseNotification signal!

respond: aBlock	"Evaluate aBlock with the current Response as a parameter and then signal a desire to end request processing and return the Response to the user agent."	aBlock value: self response.	self respond!

response	"Answer the current Response object."		^ response!

responseGenerator	"Answer a ResponseGenerator as configured in the closest RequestHandler."	^ (self handler isNil 		ifTrue: [ WAResponseGenerator ]		ifFalse: [ self handler responseGenerator ])			on: self!

shouldDestroy	^ self properties at: #shouldDestroy ifAbsent: [ true ]!

webSocket	^ self properties at: #webSocket ifAbsent:[ nil ]! !

!WARequestContext categoriesForMethods!
charSet!accessing!public! !
codec!accessing!public! !
consumer!accessing!public! !
destroy!initialization!public! !
dontDestroy!actions!public! !
handler!accessing/dynamic!public! !
handlers!accessing!public! !
initializeWithRequest:response:codec:!initialization!public! !
newCookie!accessing/dynamic!public! !
newDocument!accessing/dynamic!public! !
newDocumentOn:!accessing/dynamic!public! !
printOn:!printing!public! !
properties!accessing!public! !
push:during:!actions!public! !
registry!accessing/dynamic!public! !
request!accessing!public! !
respond!actions!public! !
respond:!actions!public! !
response!accessing!public! !
responseGenerator!accessing/dynamic!public! !
shouldDestroy!accessing!public! !
webSocket!accessing!public! !
!

!WARequestContext class methodsFor!

new	self error: self name , ' has to be instantiated with a request and response object.'!

request: aRequest response: aResponse	^ self 		request: aRequest		response: aResponse		codec: GRNullCodec new!

request: aRequest response: aResponse codec: aCodec	^ self basicNew initializeWithRequest: aRequest response: aResponse codec: aCodec! !

!WARequestContext class categoriesForMethods!
new!instance creation!public! !
request:response:!instance creation!public! !
request:response:codec:!instance creation!public! !
!

