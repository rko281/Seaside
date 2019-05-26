"Filed out from Dolphin Smalltalk 7"!

WARequestFilter subclass: #WARestfulFilter
	instanceVariableNames: 'routes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARestfulFilter guid: (GUID fromString: '{e8cd6b39-1ce0-4102-bffc-3fe1de54dcc6}')!
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

shouldCacheRoutes	"Answer a boolean if the routes should be cached by the receiver."	^ false!

shouldConsumePath	"Answer whether the request path should be consumed if a route is found."	^ false! !
!WARestfulFilter categoriesFor: #createRoutes!private! !
!WARestfulFilter categoriesFor: #executeResult:!handling!public! !
!WARestfulFilter categoriesFor: #handleFiltered:!processing!public! !
!WARestfulFilter categoriesFor: #isImplemented:!private! !
!WARestfulFilter categoriesFor: #noRouteFound:!handling!public! !
!WARestfulFilter categoriesFor: #routeForContext:ifAbsent:!private! !
!WARestfulFilter categoriesFor: #routes!accessing!public! !
!WARestfulFilter categoriesFor: #shouldCacheRoutes!private! !
!WARestfulFilter categoriesFor: #shouldConsumePath!private! !

