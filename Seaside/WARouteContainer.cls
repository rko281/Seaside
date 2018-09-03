﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WARouteContainer
	instanceVariableNames: 'pathElementCount routes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARouteContainer guid: (GUID fromString: '{7d76212d-531e-47f1-b6ac-b8d9d9cbf806}')!
WARouteContainer comment: 'A WARouteContainer is a collection of routes that all accept the same number of path elements ordered by priority.
!WARouteContainer categoriesForClass!Seaside-REST-Core-Route! !
!WARouteContainer methodsFor!

addRoute: aRoute

addRoutes: aCollectionOfRoutes

compare: a and: b byAccept: aSortedCollectionOfAccept

compare: a and: b byContentType: aMimeType thenByAccept: aSortedCollectionOfAccept

compare: a and: b using: aSortedCollectionOfAccept

compareByPathThenContentType: aMimeType thenByAccept: aSortedCollectionOfAccept

initializeWith: anInteger

pathElementCount

routeForElements: aCollection parameters: aDictionary contentType: aMimeType accept: aCollectionOfAccept ifAbsent: anAbsentBlock

routes

sortByPathThenContentType: aMimeType thenByAccept: aSortedCollectionOfAccept
!WARouteContainer categoriesFor: #addRoute:!public! !
!WARouteContainer categoriesFor: #addRoutes:!public! !
!WARouteContainer categoriesFor: #compare:and:byAccept:!private! !
!WARouteContainer categoriesFor: #compare:and:byContentType:thenByAccept:!private! !
!WARouteContainer categoriesFor: #compare:and:using:!private! !
!WARouteContainer categoriesFor: #compareByPathThenContentType:thenByAccept:!private! !
!WARouteContainer categoriesFor: #initializeWith:!initialization!public! !
!WARouteContainer categoriesFor: #pathElementCount!public! !
!WARouteContainer categoriesFor: #routeForElements:parameters:contentType:accept:ifAbsent:!public! !
!WARouteContainer categoriesFor: #routes!public! !
!WARouteContainer categoriesFor: #sortByPathThenContentType:thenByAccept:!private! !

!WARouteContainer class methodsFor!

pathElementCount: anInteger

routes: aCollectionOfRoutes
!WARouteContainer class categoriesFor: #pathElementCount:!instance creation!public! !
!WARouteContainer class categoriesFor: #routes:!instance creation!public! !
