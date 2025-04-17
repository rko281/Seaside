"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAByMethodRoutes
	instanceVariableNames: 'fixedContainers flexibleContainers'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAByMethodRoutes guid: (GUID fromString: '{9a6e0082-b3f1-45ba-9452-81cce9c6970a}')!

WAByMethodRoutes comment: 'A WAByMethodRoutes is a collection of routes first organized by HTTP method and then by number of URL path elements. It allows users to look up possible routes for a given HTTP request.See also WARouteResult and WARouteContainer.Instance Variables	routes:		<Dictionary<String, SortedCollection<WARouteContainer>>routes	- the routes keyed by HTTP method, sorted by number of path elements'!

!WAByMethodRoutes categoriesForClass!Route! !

!WAByMethodRoutes methodsFor!

addRoute: aRoute to: aDictionary	| methodRoutes subRoutes |	methodRoutes := aDictionary		at: aRoute method		ifAbsentPut: [ Dictionary new ].	subRoutes := methodRoutes at: aRoute pathElementCount ifAbsentPut: [ OrderedCollection new ].	subRoutes add: aRoute!

buildContainers: aDictionary	| result |	result := Dictionary new.	aDictionary keysAndValuesDo: [ :method :subroutes |		| methodRoutes |		methodRoutes := result			at: method			ifAbsentPut: [				SortedCollection sortBlock: [ :a :b |					a pathElementCount <= b pathElementCount ] ].		subroutes do: [ :each |			methodRoutes add: (WARouteContainer routes: each) ] ].	^ result!

fixedRoutesForContext: aRequestContext	| elementCount routesForMethod |	elementCount := aRequestContext consumer peekToEnd size.	routesForMethod := fixedContainers at: aRequestContext request method ifAbsent: [ ^ nil ].	^ routesForMethod		detect: [ :each |			each pathElementCount = elementCount ]		ifNone: [ nil ]!

flexibleRoutesForContext: aRequestContext	| elementCount routesForMethod startIndex endIndex |	elementCount := aRequestContext consumer peekToEnd size.	startIndex := nil.	routesForMethod := flexibleContainers at: aRequestContext request method ifAbsent: [ ^ nil ].	routesForMethod keysAndValuesDo: [ :index :each |		(each pathElementCount >= (elementCount - 1) and: [ startIndex isNil ])			ifTrue: [ startIndex := index ].		(each pathElementCount > elementCount and: [ endIndex notNil ])			ifTrue: [ endIndex := index ] ].	startIndex isNil		ifTrue: [ ^ nil ].	endIndex isNil		ifTrue: [ endIndex := routesForMethod size ].	^ routesForMethod copyFrom: startIndex to: endIndex!

initializeWithRoutes: aCollectionOfRoutes	| standardRouteBuilder flexibleRouteBuilder |	self initialize.	standardRouteBuilder := Dictionary new.	flexibleRouteBuilder := Dictionary new.	aCollectionOfRoutes do: [ :each |		each matchesFlexibleNumberOfPathElements			ifTrue: [ self addRoute: each to: flexibleRouteBuilder ]			ifFalse: [ self addRoute: each to: standardRouteBuilder ] ].	fixedContainers := self buildContainers: standardRouteBuilder.	flexibleContainers := self buildContainers: flexibleRouteBuilder!

mergedRoutesForContext: aRequestContext	| routes fixed flexibles |	routes := OrderedCollection new.	fixed := self fixedRoutesForContext: aRequestContext.	fixed isNil ifFalse: [		routes add: fixed ].	flexibles := self flexibleRoutesForContext: aRequestContext.	flexibles isNil ifFalse: [		routes addAll: flexibles ].	routes isEmpty		ifTrue: [ ^ nil ].	routes size = 1		ifTrue: [ ^ routes first ].	^ WARouteContainer routes: (routes gather: [ :each | each routes ])!

privateRouteForContext: aRequestContext ifAbsent: aNiladicBlock	| routeContainer parameters elements |	routeContainer := self mergedRoutesForContext: aRequestContext.	routeContainer isNil		ifTrue: [ ^ aNiladicBlock value ].	parameters := aRequestContext request url queryFields.	elements := aRequestContext consumer peekToEnd.	^ WARouteResult		route: (routeContainer			routeForElements: elements			parameters: parameters			contentType: aRequestContext request contentType 			accept: aRequestContext request accept			ifAbsent: [ ^ aNiladicBlock value ])		elements: elements		parameters: parameters!

routeForContext: aRequestContext consume: aBoolean ifAbsent: aNiladicBlock	| found result |	found := true.	result := self		privateRouteForContext: aRequestContext		ifAbsent: [			found := false.			aNiladicBlock value ].	(found and: [ aBoolean ]) ifTrue: [		"we found something this means we consume the entire path"		aRequestContext consumer upToEnd ].	^ result! !

!WAByMethodRoutes categoriesForMethods!
addRoute:to:!private! !
buildContainers:!private! !
fixedRoutesForContext:!private! !
flexibleRoutesForContext:!private! !
initializeWithRoutes:!initialization!public! !
mergedRoutesForContext:!private! !
privateRouteForContext:ifAbsent:!private! !
routeForContext:consume:ifAbsent:!public! !
!

!WAByMethodRoutes class methodsFor!

routes: aCollectionOfRoutes	^ self basicNew initializeWithRoutes: aCollectionOfRoutes! !

!WAByMethodRoutes class categoriesForMethods!
routes:!instance creation!public! !
!

