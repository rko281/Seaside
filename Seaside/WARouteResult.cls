"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WARouteResult
	instanceVariableNames: 'route elements parameters'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARouteResult guid: (GUID fromString: '{a5ef936d-ab16-4ebc-86a6-b9efbad64f22}')!
WARouteResult comment: 'I am the result of a route look up. I contain all the information required to "execute" the result.Instance Variables:	route	<WARoute>	elements	<Collection<String>>	parameters	<WARequestFields>		route	the found route	elements	the unconsumed path elements of the request	parameters	the query fields of the request'!
!WARouteResult categoriesForClass!Seaside-REST-Core-Route! !
!WARouteResult methodsFor!

elements	^ elements!

initializeWithRoute: aRoute elements: anArray parameters: aDictionary	self initialize.	route := aRoute.	elements := anArray.	parameters := aDictionary!

route	^ route!

seasideMimeType	"Answer the value of the content-type header according to the value of <consumes: >.	Answer nil for missing values."	^ route seasideMimeType!

sendMessageTo: anObject	| arguments |	arguments := Array new: route argumentCount.	route mapArgumentsWithElements: elements parameters: parameters into: arguments.	^ route		sendSelectorWith: arguments		to: anObject! !
!WARouteResult categoriesFor: #elements!accessing!public! !
!WARouteResult categoriesFor: #initializeWithRoute:elements:parameters:!initialization!public! !
!WARouteResult categoriesFor: #route!accessing!public! !
!WARouteResult categoriesFor: #seasideMimeType!accessing!public! !
!WARouteResult categoriesFor: #sendMessageTo:!public! !

!WARouteResult class methodsFor!

route: aRoute elements: anArray parameters: aDictionary	^ self basicNew initializeWithRoute: aRoute elements: anArray parameters: aDictionary! !
!WARouteResult class categoriesFor: #route:elements:parameters:!instance creation!public! !

