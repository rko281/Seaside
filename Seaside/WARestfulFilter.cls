﻿"Filed out from Dolphin Smalltalk 7"!

WARequestFilter subclass: #WARestfulFilter
	instanceVariableNames: 'routes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARestfulFilter guid: (GUID fromString: '{dcc18bb5-2af4-43d4-bb52-42ccc1ca5c5c}')!
WARestfulFilter comment: ''!
!WARestfulFilter categoriesForClass!Seaside-REST-Core-Handler! !
!WARestfulFilter methodsFor!

createRoutes

executeResult: aRouteResult

handleFiltered: aRequestContext

isImplemented: aString

noRouteFound: aRequestContext

routeForContext: aRequestContext ifAbsent: aNiladicBlock

routes

shouldCacheRoutes

shouldConsumePath
!WARestfulFilter categoriesFor: #createRoutes!private! !
!WARestfulFilter categoriesFor: #executeResult:!handling!public! !
!WARestfulFilter categoriesFor: #handleFiltered:!processing!public! !
!WARestfulFilter categoriesFor: #isImplemented:!private! !
!WARestfulFilter categoriesFor: #noRouteFound:!handling!public! !
!WARestfulFilter categoriesFor: #routeForContext:ifAbsent:!private! !
!WARestfulFilter categoriesFor: #routes!accessing!public! !
!WARestfulFilter categoriesFor: #shouldCacheRoutes!private! !
!WARestfulFilter categoriesFor: #shouldConsumePath!private! !
