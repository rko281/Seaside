"Filed out from Dolphin Smalltalk 7"!

WARequestHandler subclass: #WARestfulHandler
	instanceVariableNames: 'routes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARestfulHandler guid: (GUID fromString: '{07f5e0f4-2fa0-461f-bf82-26fa60287889}')!
WARestfulHandler comment: ''!
!WARestfulHandler categoriesForClass!Seaside-REST-Core-Handler! !
!WARestfulHandler methodsFor!

createRoutes	"Creates a collection of routes for the receiver. Override this method in subclasses to explicitely create the routes instead of using the default implementation that builds the routes using annotated methods (pragmas)."	^ GRPlatform current createRoutesFrom: self class to: WARestfulHandler!

executeResult: aRouteResult	| requestContext |	requestContext := self requestContext.	requestContext respond: [ :response |		| mimeType |		mimeType := aRouteResult seasideMimeType.		mimeType isNil			ifTrue: [				response					document: (aRouteResult sendMessageTo: self) ]			ifFalse: [				mimeType isBinary ifFalse: [					"defensive copy because we modify"					mimeType := mimeType copy.					mimeType charset: requestContext charSet ].				response					document: (aRouteResult sendMessageTo: self)					mimeType: mimeType ] ]!

handleFiltered: aRequestContext	self executeResult: (self		routeForContext: aRequestContext		ifAbsent: [ self noRouteFound: aRequestContext ])!

isImplemented: aString	^ WARoute httpMethodNames includes: aString!

noRouteFound: aRequestContext	aRequestContext responseGenerator		notFound;		respond!

routeForContext: aRequestContext ifAbsent: aNiladicBlock	^ (WAByMethodRoutes routes: self routes)		routeForContext: aRequestContext		consume: self shouldConsumePath		ifAbsent: aNiladicBlock!

routes	"Answer a collection of routes for the receiver."	^ self shouldCacheRoutes		ifTrue: [  routes ifNil: [ routes := self createRoutes ] ]		ifFalse: [			"Issue 785			even assign when they should not be cached to better support recaching"			routes := self createRoutes ]!

shouldCacheRoutes	"Answer a boolean if the routes should be cached by the receiver."	^ false!

shouldConsumePath	"Answer whether the request path should be consumed if a route is found."	^ true! !
!WARestfulHandler categoriesFor: #createRoutes!private! !
!WARestfulHandler categoriesFor: #executeResult:!handling!public! !
!WARestfulHandler categoriesFor: #handleFiltered:!handling!public! !
!WARestfulHandler categoriesFor: #isImplemented:!private! !
!WARestfulHandler categoriesFor: #noRouteFound:!handling!public! !
!WARestfulHandler categoriesFor: #routeForContext:ifAbsent:!private! !
!WARestfulHandler categoriesFor: #routes!accessing!public! !
!WARestfulHandler categoriesFor: #shouldCacheRoutes!private! !
!WARestfulHandler categoriesFor: #shouldConsumePath!private! !

