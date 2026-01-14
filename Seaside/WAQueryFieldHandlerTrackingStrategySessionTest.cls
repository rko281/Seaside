"Filed out from Dolphin Smalltalk"!

WASessionTrackingStrategyTest subclass: #WAQueryFieldHandlerTrackingStrategySessionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAQueryFieldHandlerTrackingStrategySessionTest guid: (GUID fromString: '{b39708ca-5d24-4c53-b7e0-ae641f9a60b8}')!

WAQueryFieldHandlerTrackingStrategySessionTest comment: 'I test all the session related behavior of WAQueryFieldHandlerTrackingStrategy that can''t be tested in WAQueryFieldHandlerTrackingStrategyTest for dependency reasons.'!

!WAQueryFieldHandlerTrackingStrategySessionTest categoriesForClass!Seaside-Tests-Session! !

!WAQueryFieldHandlerTrackingStrategySessionTest methodsFor!

newStrategy	^ WAQueryFieldHandlerTrackingStrategy new!

testAddKeyToContext	| context |	context := self requestContext.	strategy addKey: 'The_Metaphor' toContext: context.	self assertNoCookies: context!

testAddKeyToUrl	| context uri |	context := self requestContext.	uri := context request uri copy.	strategy addKey: 'The_Metaphor' toUrl: uri.	self assert: uri greaseString = '/catspajamassc2?_s=The_Metaphor'!

testNoHandlerFoundForKey	| context notified |	context := self requestContext.	notified := false.	[ strategy		noHandlerFoundForKey: 'The_Birthday_Massacre'		in: self newApplication		context: context ]		on: WAResponseNotification		do: [ :notification | notified := true ].	self assert: notified.	self assertNotFound: context! !

!WAQueryFieldHandlerTrackingStrategySessionTest categoriesForMethods!
newStrategy!private! !
testAddKeyToContext!public!tests! !
testAddKeyToUrl!public!tests! !
testNoHandlerFoundForKey!public!tests! !
!

