"Filed out from Dolphin Smalltalk 7"!

WARequestHandler subclass: #WARegistry
	instanceVariableNames: 'cache'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARegistry guid: (GUID fromString: '{88c2ab85-8685-4268-bd4d-3db1f8e3ab49}')!
WARegistry comment: 'WARegistry maintains a set of handlers indexed by a key which it assigns when the handler is registerd. WARegistry checks incoming request URLs for a key and looks for a matching active request handler. If one exists, the request is sent to the proper handler. If not, the request is either a new request (in which case #handleDefaultRequest: is called) or a request to a now-inactive handler (in which case #handleExpiredRequest: is called). These two methods allow subclasses to properly handle these requests.Subclasses must implement the following messages:	handleDefaultRequest:		Handle a request without a session key, ie a new request.	handlerField		The URL parameter in which to store the request handler key.Instance Variables:	cache - an instance of WACache to hold the stored request handlers'!
!WARegistry categoriesForClass!Seaside-Core-RequestHandling! !
!WARegistry methodsFor!

cache	^ cache!

cache: aCache	cache := aCache!

childrenDo: aBlock	self cache keysAndValuesDo: [ :key :value | aBlock value: value ]!

clear	"Remove all registered handlers."	self cache clear!

createCache	^ WAMutualExclusionCache on: WABidirectionalCache new!

defaultConfiguration	^ super defaultConfiguration		removeParent: WARequestHandlingConfiguration instance;		addParent: WARegistryConfiguration instance;		yourself!

dispatch: aRequestContext to: aRequestHandler key: aString	"This method is used by the handling methods to trigger the dispatch of a request	to the specified handler."		self trackingStrategy addKey: aString toContext: aRequestContext.	aRequestHandler handle: aRequestContext!

handle: aRequestContext registering: aRequestHandler	"Register a new handler and then dispatch the request to it. A cookie may need	to be added to the response with the handler's key."		| key |	key := self register: aRequestHandler.	self dispatch: aRequestContext to: aRequestHandler key: key!

handle: aRequestContext registering: aRequestHandler at: aKey	"Register a new handler at the given key and then dispatch the request to it. A cookie may need	to be added to the response with the handler's key."		self register: aRequestHandler at: aKey.	self dispatch: aRequestContext to: aRequestHandler key: aKey!

handleDefault: aRequestContext 	"This method is called whenever a request is received with no key specified. This method can be overridden by subclasses to register a new handler to handle the request."		aRequestContext responseGenerator		notFound;		respond!

handleExpired: aRequestContext  	"This method is called whenever a request is received with a key that does not match a registered handler."	 			 	 	aRequestContext request isXmlHttpRequest ifTrue: [ 		^ aRequestContext responseGenerator 			forbidden; 			respond ]. 	 	"Previously, Seaside used to send a redirect response (302) with the 	'Location' header set to the same path as in the request (if possible). 	Any session cookie would at this point have been set for deletion (i.e. 	a 'Set-Cookie' header with a request for deletion would have been set). 	Unfortunately, user-agents across the board don't play well with 'Set-Cookie' 	and redirect responses. 	Hence, we proceed and respond as usual. If a session is to be created, 	another 'Set-Cookie' header will tell the browser to use the new 	session identifier from now on. 	Nice side-effect: user-agents will no longer need to perform the additional 	redirect when a stale cookie is still in the cache. 	 	See https://github.com/SeasideSt/Seaside/issues/916." 	self handleDefault: aRequestContext!

handleFiltered: aRequestContext	| key handler |	key := self trackingStrategy keyFromContext: aRequestContext.	key isNil		ifTrue: [			self handleDefault: aRequestContext ]		ifFalse: [			handler := self cache at: key ifAbsent: [ nil ].			handler isNil				ifTrue: [					self trackingStrategy noHandlerFoundForKey: key in: self context: aRequestContext ]				ifFalse: [					self handleKeyed: handler with: key context: aRequestContext ] ]!

handleKeyed: aRequestHandler with: aString context: aRequestContext	"This method is called whenever a request is received with a key that matches	a registered handler."		self dispatch: aRequestContext to: aRequestHandler key: aString!

handlersDo: aBlock	self keysAndHandlersDo: [ :key :value | aBlock value: value ]!

initialize	super initialize.	self initializeCache!

initializeCache	cache := self createCache!

isRegistry	^ true!

keyFor: aRequestHandler ifAbsent: absentBlock	^ self cache keyAtValue: aRequestHandler ifAbsent: absentBlock!

keysAndHandlersDo: aBlock	self cache keysAndValuesDo: aBlock!

postCopy	super postCopy.	"Since our handlers are dynamically registered and temporary, it makes	sense not to copy them."	cache := self createCache!

register: aRequestHandler	^ self cache store: (aRequestHandler setParent: self; yourself)!

register: aRequestHandler at: aKey	^ self cache at: aKey put: (aRequestHandler setParent: self; yourself)!

trackingStrategy	^ self configuration at: #trackingStrategy!

unregister: aRequestHandler	^ self cache remove: aRequestHandler!

unregisterAt: aKey	^ self cache removeKey: aKey!

unregistered	super unregistered.	self clear!

urlFor: aRequestHandler	^ self		urlFor: aRequestHandler		ifAbsent: [ WAUnregisteredHandlerError signal ]!

urlFor: aRequestHandler ifAbsent: absentBlock	"Return the URL for the given request handler. If the handler is not registered, return	the result of absentBlock.	This URL will include the handler's key; if you don't want this, use #url instead."	| key url |	key := self keyFor: aRequestHandler ifAbsent: [ ^ absentBlock value ].	url := self url.	self trackingStrategy addKey: key toUrl: url.	^ url! !
!WARegistry categoriesFor: #cache!accessing!public! !
!WARegistry categoriesFor: #cache:!accessing!public! !
!WARegistry categoriesFor: #childrenDo:!parent/child!public! !
!WARegistry categoriesFor: #clear!parent/child!public! !
!WARegistry categoriesFor: #createCache!initialization!public! !
!WARegistry categoriesFor: #defaultConfiguration!configuration!public! !
!WARegistry categoriesFor: #dispatch:to:key:!handling/helpers!public! !
!WARegistry categoriesFor: #handle:registering:!handling/helpers!public! !
!WARegistry categoriesFor: #handle:registering:at:!handling/helpers!public! !
!WARegistry categoriesFor: #handleDefault:!handling!public! !
!WARegistry categoriesFor: #handleExpired:!handling!public! !
!WARegistry categoriesFor: #handleFiltered:!handling!public! !
!WARegistry categoriesFor: #handleKeyed:with:context:!handling!public! !
!WARegistry categoriesFor: #handlersDo:!enumerating!public! !
!WARegistry categoriesFor: #initialize!initialization!public! !
!WARegistry categoriesFor: #initializeCache!initialization!public! !
!WARegistry categoriesFor: #isRegistry!public!testing! !
!WARegistry categoriesFor: #keyFor:ifAbsent:!parent/child!public! !
!WARegistry categoriesFor: #keysAndHandlersDo:!enumerating!public! !
!WARegistry categoriesFor: #postCopy!copying!public! !
!WARegistry categoriesFor: #register:!parent/child!public! !
!WARegistry categoriesFor: #register:at:!parent/child!public! !
!WARegistry categoriesFor: #trackingStrategy!configuration!public! !
!WARegistry categoriesFor: #unregister:!parent/child!public! !
!WARegistry categoriesFor: #unregisterAt:!parent/child!public! !
!WARegistry categoriesFor: #unregistered!parent/child!public! !
!WARegistry categoriesFor: #urlFor:!accessing!public! !
!WARegistry categoriesFor: #urlFor:ifAbsent:!accessing!public! !

!WARegistry class methodsFor!

isAbstract	^ self name = #WARegistry! !
!WARegistry class categoriesFor: #isAbstract!public!testing! !

