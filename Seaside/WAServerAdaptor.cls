"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAServerAdaptor
	instanceVariableNames: 'manager port requestHandler codec'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAServerAdaptor guid: (GUID fromString: '{44821a29-588e-4fe1-a0dc-72a9c22cedad}')!
WAServerAdaptor comment: 'A WAServer is the abstract base class for all servers. Actual servers do not have to subclass it but have to support the protocol: - #codec - #usesSmalltalkEncodingInstance Variables	codec:		<WACodec>codec	- the codec used for response conversion from characters to bytes'!
!WAServerAdaptor categoriesForClass!Seaside-Core-Server! !
!WAServerAdaptor methodsFor!

additionalStatusOn: aStream!

basicStart	self subclassResponsibility!

basicStop	self subclassResponsibility!

canStart	^ manager notNil and: [ self manager canStart: self ]!

canStop	^ manager notNil and: [ self manager canStop: self ]!

codec	^ codec!

codec: aCodec	codec := aCodec!

contextFor: aNativeRequest	"Answer a request context for aNativeRequest."	^ WARequestContext		request: (self requestFor: aNativeRequest)		response: (self responseFor: aNativeRequest)		codec: self codec!

defaultCodec	^ GRNullCodec new!

defaultPort	^ 8080!

defaultRequestHandler	^ WADispatcher default!

handle: aRequestContext	"Handle the basic request-response loop."	self handleRequest: aRequestContext.	self handlePadding: aRequestContext!

handlePadding: aRequestContext	"If you create an error page that's too small, Microsoft Internet Explorer will display its own error page that includes a link to the MSN network search engine rather than your own error page. See <http://www.404-error-page.com/404-error-page-too-short-problem-microsoft-ie.shtml> for details."	| size |	size := aRequestContext response stream size.	^ (size < 512 and: [ #(400 403 404 405 406 408 409 410 500 501 505) includes: aRequestContext response status ])		ifTrue: [ aRequestContext response nextPutAll: ((String new: 512 - size) atAllPut: $ ) ]!

handleRequest: aRequestContext	"Pass the request context to the appropriate request handler."		[ self requestHandler handle: aRequestContext ]		on: WAResponseNotification		do: [ :n | "got a response" ]!

initialize	super initialize.	codec := self defaultCodec.	port := self defaultPort!

initializeWithManager: aServerManager	self initialize.	manager := aServerManager!

isRunning	self subclassResponsibility!

isStarting	self subclassResponsibility!

isStopped	self subclassResponsibility!

isStopping	self subclassResponsibility!

kill	self basicStop!

manager	^ manager!

port	^ port!

port: anObject	port := anObject!

process: aNativeRequest	"Process aNativeRequest by converting to a request context, handling the request, and converting the request context back to a native response. Make sure to release the context after processing, to help the garbage collector and avoid having large streams and sockets hanging around if people still refer to the obsolete request context."	| context |	context := self contextFor: aNativeRequest.	^ [ self handle: context; responseFrom: context ]		ensure: [ context destroy ]!

requestAddressFor: aNativeRequest	self subclassResponsibility!

requestBodyFor: aNativeRequest	"Answer the undecoded request body as a String."		self subclassResponsibility!

requestCookiesFor: aNativeRequest	self subclassResponsibility!

requestFieldsFor: aNativeRequest	self subclassResponsibility!

requestFor: aNativeRequest	"Answer a request object for aNativeRequest."	^ (WARequest		method: (self requestMethodFor: aNativeRequest)		uri: (self requestUrlFor: aNativeRequest)		version: (self requestVersionFor: aNativeRequest))			setHeaders: (self requestHeadersFor: aNativeRequest);			setBody: (self requestBodyFor: aNativeRequest);			setPostFields: (self requestFieldsFor: aNativeRequest);			setCookies: (self requestCookiesFor: aNativeRequest);			setRemoteAddress: (self requestAddressFor: aNativeRequest);			setSslSessionId: (self sslSessionIdFor: aNativeRequest);			yourself!

requestHandler	"We don't set the instance variable here, if nil, because the default	request handler may change over time and we want to keep using	the current default if the user hasn't specified one."	^ requestHandler ifNil: [ self defaultRequestHandler ]!

requestHandler: aRequestHandler	requestHandler := aRequestHandler!

requestHeadersFor: aNativeRequest	self subclassResponsibility!

requestMethodFor: aNativeRequest	self subclassResponsibility!

requestUrlFor: aNativeRequest	self subclassResponsibility!

requestVersionFor: aNativeRequest	self subclassResponsibility!

responseFor: aNativeRequest	"Answer a response object for aNativeRequest."	^ WABufferedResponse on: (self codec encoderFor: (GRPlatform current writeCharacterStreamOn: String new))!

responseFrom: aRequestContext	"Answer a native response from aRequestContext."	self subclassResponsibility!

restart	self manager restart: self!

shutDown!

sslSessionIdFor: aNativeRequest	"Answer the SSL session id or nil if the request wasn't made over SSL or the server adaptor does not support it.		The default implementation answers nil for compatibility and convenience reasons."	^ nil!

start	self manager start: self!

startUp!

statusString	^ self isRunning		ifTrue: [ 'running' ]		ifFalse: [ 'stopped' ]!

stop	self manager stop: self!

unregister	self manager unregister: self!

unregistered	manager := nil! !
!WAServerAdaptor categoriesFor: #additionalStatusOn:!accessing/readonly!public! !
!WAServerAdaptor categoriesFor: #basicStart!private! !
!WAServerAdaptor categoriesFor: #basicStop!private! !
!WAServerAdaptor categoriesFor: #canStart!public!testing! !
!WAServerAdaptor categoriesFor: #canStop!public!testing! !
!WAServerAdaptor categoriesFor: #codec!accessing!public! !
!WAServerAdaptor categoriesFor: #codec:!accessing!public! !
!WAServerAdaptor categoriesFor: #contextFor:!converting!public! !
!WAServerAdaptor categoriesFor: #defaultCodec!defaults!public! !
!WAServerAdaptor categoriesFor: #defaultPort!defaults!public! !
!WAServerAdaptor categoriesFor: #defaultRequestHandler!defaults!public! !
!WAServerAdaptor categoriesFor: #handle:!processing!public! !
!WAServerAdaptor categoriesFor: #handlePadding:!processing!public! !
!WAServerAdaptor categoriesFor: #handleRequest:!processing!public! !
!WAServerAdaptor categoriesFor: #initialize!initialization!public! !
!WAServerAdaptor categoriesFor: #initializeWithManager:!initialization!public! !
!WAServerAdaptor categoriesFor: #isRunning!public!testing! !
!WAServerAdaptor categoriesFor: #isStarting!public!testing! !
!WAServerAdaptor categoriesFor: #isStopped!public!testing! !
!WAServerAdaptor categoriesFor: #isStopping!public!testing! !
!WAServerAdaptor categoriesFor: #kill!public!starting/stopping! !
!WAServerAdaptor categoriesFor: #manager!accessing/readonly!public! !
!WAServerAdaptor categoriesFor: #port!accessing!public! !
!WAServerAdaptor categoriesFor: #port:!accessing!public! !
!WAServerAdaptor categoriesFor: #process:!processing!public! !
!WAServerAdaptor categoriesFor: #requestAddressFor:!converting/request!public! !
!WAServerAdaptor categoriesFor: #requestBodyFor:!converting/request!public! !
!WAServerAdaptor categoriesFor: #requestCookiesFor:!converting/request!public! !
!WAServerAdaptor categoriesFor: #requestFieldsFor:!converting/request!public! !
!WAServerAdaptor categoriesFor: #requestFor:!converting!public! !
!WAServerAdaptor categoriesFor: #requestHandler!accessing!public! !
!WAServerAdaptor categoriesFor: #requestHandler:!accessing!public! !
!WAServerAdaptor categoriesFor: #requestHeadersFor:!converting/request!public! !
!WAServerAdaptor categoriesFor: #requestMethodFor:!converting/request!public! !
!WAServerAdaptor categoriesFor: #requestUrlFor:!converting/request!public! !
!WAServerAdaptor categoriesFor: #requestVersionFor:!converting/request!public! !
!WAServerAdaptor categoriesFor: #responseFor:!converting!public! !
!WAServerAdaptor categoriesFor: #responseFrom:!converting!public! !
!WAServerAdaptor categoriesFor: #restart!public!starting/stopping! !
!WAServerAdaptor categoriesFor: #shutDown!private! !
!WAServerAdaptor categoriesFor: #sslSessionIdFor:!converting/request!public! !
!WAServerAdaptor categoriesFor: #start!public!starting/stopping! !
!WAServerAdaptor categoriesFor: #startUp!private! !
!WAServerAdaptor categoriesFor: #statusString!accessing/readonly!public! !
!WAServerAdaptor categoriesFor: #stop!public!starting/stopping! !
!WAServerAdaptor categoriesFor: #unregister!public!registration! !
!WAServerAdaptor categoriesFor: #unregistered!public!registration! !

!WAServerAdaptor class methodsFor!

isAbstract	^ self name = #WAServerAdaptor!

manager: aServerManager	^ aServerManager register: 		(self basicNew			initializeWithManager: aServerManager;			yourself)!

new	^ self manager: WAServerManager default!

port: anInteger	^ self new		port: anInteger;		yourself! !
!WAServerAdaptor class categoriesFor: #isAbstract!public!testing! !
!WAServerAdaptor class categoriesFor: #manager:!instance creation!public! !
!WAServerAdaptor class categoriesFor: #new!instance creation!public! !
!WAServerAdaptor class categoriesFor: #port:!instance creation!public! !

