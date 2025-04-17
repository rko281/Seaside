"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WARouteResult
	instanceVariableNames: 'route elements parameters'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARouteResult guid: (GUID fromString: '{8789cd99-dd6b-47a3-8f4a-ad36d035b782}')!

WARouteResult comment: 'I am the result of a route look up. I contain all the information required to "execute" the result.Instance Variables:	route	<WARoute>	elements	<Collection<String>>	parameters	<WARequestFields>		route	the found route	elements	the unconsumed path elements of the request	parameters	the query fields of the request'!

!WARouteResult categoriesForClass!Route! !

!WARouteResult methodsFor!

elements	^ elements!

initializeWithRoute: aRoute elements: anArray parameters: aDictionary	self initialize.	route := aRoute.	elements := anArray.	parameters := aDictionary!

route	^ route!

seasideMimeType	"Answer the value of the content-type header according to the value of <consumes: >.	Answer nil for missing values."	^ route seasideMimeType!

sendMessageTo: anObject	| arguments |	arguments := Array new: route argumentCount.	route mapArgumentsWithElements: elements parameters: parameters into: arguments.	^ route		sendSelectorWith: arguments		to: anObject! !

!WARouteResult categoriesForMethods!
elements!accessing!public! !
initializeWithRoute:elements:parameters:!initialization!public! !
route!accessing!public! !
seasideMimeType!accessing!public! !
sendMessageTo:!public! !
!

!WARouteResult class methodsFor!

route: aRoute elements: anArray parameters: aDictionary	^ self basicNew initializeWithRoute: aRoute elements: anArray parameters: aDictionary! !

!WARouteResult class categoriesForMethods!
route:elements:parameters:!instance creation!public! !
!

