﻿"Filed out from Dolphin Smalltalk"!

WARequestHandler subclass: #WARegistry
	instanceVariableNames: 'cache'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARegistry guid: (GUID fromString: '{4ac359e0-41ea-4c14-a30a-dfca79ad3630}')!

WARegistry comment: 'WARegistry maintains a set of handlers indexed by a key which it assigns when the handler is registerd. WARegistry checks incoming request URLs for a key and looks for a matching active request handler. If one exists, the request is sent to the proper handler. If not, the request is either a new request (in which case #handleDefaultRequest: is called) or a request to a now-inactive handler (in which case #handleExpiredRequest: is called). These two methods allow subclasses to properly handle these requests.Subclasses must implement the following messages:	handleDefaultRequest:		Handle a request without a session key, ie a new request.	handlerField		The URL parameter in which to store the request handler key.Instance Variables:	cache - an instance of WACache to hold the stored request handlers'!

!WARegistry categoriesForClass!RequestHandling! !

!WARegistry methodsFor!

cache	^ cache!

cache: aCache	cache := aCache!

childrenDo: aBlock	self cache keysAndValuesDo: [ :key :value | aBlock value: value ]!

clear	"Remove all registered handlers."	self cache clear!

createCache	^ WAMutualExclusionCache on: WABidirectionalCache new!

defaultConfiguration	^ super defaultConfiguration		removeParent: WARequestHandlingConfiguration instance;		addParent: WARegistryConfiguration instance;		yourself!

dispatch: aRequestContext to: aRequestHandler key: aString	"This method is used by the handling methods to trigger the dispatch of a request	to the specified handler."		self trackingStrategy addKey: aString toContext: aRequestContext.	aRequestHandler handle: aRequestContext!

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

!WARegistry categoriesForMethods!
cache!accessing!public! !
cache:!accessing!public! !
childrenDo:!parent/child!public! !
clear!parent/child!public! !
createCache!initialization!public! !
defaultConfiguration!configuration!public! !
dispatch:to:key:!handling/helpers!public! !
handle:registering:!handling/helpers!public! !
handle:registering:at:!handling/helpers!public! !
handleDefault:!handling!public! !
handleExpired:!handling!public! !
handleFiltered:!handling!public! !
handleKeyed:with:context:!handling!public! !
handlersDo:!enumerating!public! !
initialize!initialization!public! !
initializeCache!initialization!public! !
isRegistry!public!testing! !
keyFor:ifAbsent:!parent/child!public! !
keysAndHandlersDo:!enumerating!public! !
postCopy!copying!public! !
register:!parent/child!public! !
register:at:!parent/child!public! !
trackingStrategy!configuration!public! !
unregister:!parent/child!public! !
unregisterAt:!parent/child!public! !
unregistered!parent/child!public! !
urlFor:!accessing!public! !
urlFor:ifAbsent:!accessing!public! !
!

!WARegistry class methodsFor!

isAbstract	^ self name = #WARegistry! !

!WARegistry class categoriesForMethods!
isAbstract!public!testing! !
!

