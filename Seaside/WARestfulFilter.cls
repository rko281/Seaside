"Filed out from Dolphin Smalltalk"!

WARequestFilter subclass: #WARestfulFilter
	instanceVariableNames: 'routes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARestfulFilter guid: (GUID fromString: '{92cdb55a-05f7-4821-abe7-aaecac733895}')!

WARestfulFilter comment: ''!

!WARestfulFilter categoriesForClass!Seaside-REST-Core-Handler! !

!WARestfulFilter methodsFor!

createRoutes	"Creates a collection of routes for the receiver. Override this method in subclasses to explicitely create the routes instead of using the default implementation that builds the routes using annotated methods (pragmas)."	^ GRPlatform current createRoutesFrom: self class to: WARestfulFilter!

executeResult: aRouteResult	| requestContext |	requestContext := self requestContext.	requestContext respond: [ :response |		| mimeType |		mimeType := aRouteResult seasideMimeType.		mimeType isNil			ifTrue: [				response					document: (aRouteResult sendMessageTo: self) ]			ifFalse: [				mimeType isBinary ifFalse: [					"defensive copy because we modify"					mimeType := mimeType copy.					mimeType charset: requestContext charSet ].				response					document: (aRouteResult sendMessageTo: self)					mimeType: mimeType ] ]!

handleFiltered: aRequestContext	self executeResult: (self		routeForContext: aRequestContext		ifAbsent: [ self noRouteFound: aRequestContext ])!

isImplemented: aString	^ WARoute httpMethodNames includes: aString!

noRouteFound: aRequestContext	super handleFiltered: aRequestContext!

routeForContext: aRequestContext ifAbsent: aNiladicBlock	^ (WAByMethodRoutes routes: self routes)		routeForContext: aRequestContext		consume: self shouldConsumePath		ifAbsent: aNiladicBlock!

routes	"Answer a collection of routes for the receiver."	^ self shouldCacheRoutes		ifTrue: [  routes ifNil: [ routes := self createRoutes ] ]		ifFalse: [			"Issue 785			even assign when they should not be cached to better support recaching"			routes := self createRoutes ]!

shouldCacheRoutes	"Answer a boolean if the routes should be cached by the receiver.	Subclasses are supposed to override this method in such a way that routes are cached in production. This way the overhead of recreating the routes on every request is avoided. Recreating the routes may involve decompilation or parsing to get the method parameter names which may not be thread-safe.	For development recreating the routes on every request makes for a better development experience as changes are immediately visible."	^ false!

shouldConsumePath	"Answer whether the request path should be consumed if a route is found."	^ false! !

!WARestfulFilter categoriesForMethods!
createRoutes!private! !
executeResult:!handling!public! !
handleFiltered:!processing!public! !
isImplemented:!private! !
noRouteFound:!handling!public! !
routeForContext:ifAbsent:!private! !
routes!accessing!public! !
shouldCacheRoutes!private! !
shouldConsumePath!private! !
!

