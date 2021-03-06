﻿"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WARouteContainer
	instanceVariableNames: 'pathElementCount routes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARouteContainer guid: (GUID fromString: '{3d7c79dc-8817-4106-80e5-cc8853676a6c}')!
WARouteContainer comment: 'A WARouteContainer is a collection of routes that all accept the same number of path elements ordered by priority.Instance Variables	pathElementCount:		<Integer>	routes:		<SortedCollection<WARoute>>pathElementCount	- the number of path elements that any of the routes in this container acceptsroutes	- the routes ordered by priority'!
!WARouteContainer categoriesForClass!Seaside-REST-Core-Route! !
!WARouteContainer methodsFor!

addRoute: aRoute	^ routes add: aRoute!

addRoutes: aCollectionOfRoutes	aCollectionOfRoutes do: [ :each |		self addRoute: each ]!

compare: a and: b byAccept: aSortedCollectionOfAccept	^ self compare: a and: b using: aSortedCollectionOfAccept!

compare: a and: b byContentType: aMimeType thenByAccept: aSortedCollectionOfAccept	| aPriority bPriority |	aPriority := a consumesPriorityFor: aMimeType.	bPriority := b consumesPriorityFor: aMimeType.	^ aPriority ~= bPriority		ifTrue: [ aPriority < bPriority ifTrue: [ -1 ] ifFalse: [ 1 ] ]		ifFalse: [			aSortedCollectionOfAccept isEmpty				ifTrue: [ 0 "both are equal" ]				ifFalse: [ self compare: a and: b byAccept: aSortedCollectionOfAccept ] ]!

compare: a and: b using: aSortedCollectionOfAccept	aSortedCollectionOfAccept acceptsDo: [ :accepts |		| aPriority bPriority |		aPriority := -1.		bPriority := -1.		accepts do: [ :each |			aPriority := aPriority max: (a producesPriorityFor: each).			bPriority := bPriority max: (b producesPriorityFor: each) ].		aPriority ~= bPriority			ifTrue: [				^ aPriority < bPriority ifTrue: [ -1 ] ifFalse: [ 1 ] ] ].	^ 0 "both are equal"!

compareByPathThenContentType: aMimeType thenByAccept: aSortedCollectionOfAccept	^ [ :a :b |		| aPathPriority bPathPriority |		aPathPriority := a priority.		bPathPriority := b priority.		(aPathPriority ~= bPathPriority or: [ aMimeType isNil and: [ aSortedCollectionOfAccept isNil ] ])			ifTrue: [ aPathPriority < bPathPriority ifTrue: [ -1 ] ifFalse: [ 1 ] ]			ifFalse: [				aMimeType isNil					ifTrue: [ self compare: a and: b byAccept: aSortedCollectionOfAccept ]					ifFalse: [ self compare: a and: b byContentType: aMimeType thenByAccept: aSortedCollectionOfAccept ] ] ]	!

initializeWith: anInteger	self initialize.	pathElementCount := anInteger.	routes := SortedCollection sortBlock: [ :a :b |		a priority > b priority ]!

pathElementCount	^ pathElementCount!

routeForElements: aCollection parameters: aDictionary contentType: aMimeType accept: aCollectionOfAccept ifAbsent: anAbsentBlock	| result sortedAccept |	result := (routes select: [ :each |			(each matchesPath: aCollection)				and: [ (each matchesParameters: aDictionary)				and: [ (aMimeType isNil or: [ each consumes: aMimeType ])				and: [ aCollectionOfAccept isNil or: [ each produces: aCollectionOfAccept ] ] ] ] ]) asArray.	result isEmpty		ifTrue: [ ^ anAbsentBlock value ].	result size = 1		ifTrue: [ ^ result first ].	sortedAccept := WASortedAccepts accepts: aCollectionOfAccept.	result sort: (self sortByPathThenContentType: aMimeType thenByAccept: sortedAccept).		"when the first and second highest priority match have the same priority we have an conflict"	^ ((self compareByPathThenContentType: aMimeType thenByAccept: sortedAccept) value: result first value: result second) = 0		ifTrue: [ anAbsentBlock value ]		ifFalse: [ result first ]!

routes	^ routes!

sortByPathThenContentType: aMimeType thenByAccept: aSortedCollectionOfAccept	| block |	block := self compareByPathThenContentType: aMimeType thenByAccept: aSortedCollectionOfAccept.	^ [ :a :b |		(block value: a value: b) = 1 ]	! !
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

pathElementCount: anInteger	^ self basicNew initializeWith: anInteger!

routes: aCollectionOfRoutes	^ (self pathElementCount: aCollectionOfRoutes first pathElementCount)		addRoutes: aCollectionOfRoutes;		yourself! !
!WARouteContainer class categoriesFor: #pathElementCount:!instance creation!public! !
!WARouteContainer class categoriesFor: #routes:!instance creation!public! !

