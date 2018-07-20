"Filed out from Dolphin Smalltalk 7"!

WASessionTrackingStrategyTest subclass: #WAQueryFieldHandlerTrackingStrategySessionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAQueryFieldHandlerTrackingStrategySessionTest guid: (GUID fromString: '{e4bb68c3-44a9-4055-8582-96440ce7cfbf}')!
WAQueryFieldHandlerTrackingStrategySessionTest comment: 'I test all the session related behavior of WAQueryFieldHandlerTrackingStrategy that can''t be tested in WAQueryFieldHandlerTrackingStrategyTest for dependency reasons.'!
!WAQueryFieldHandlerTrackingStrategySessionTest categoriesForClass!Seaside-Tests-Session! !
!WAQueryFieldHandlerTrackingStrategySessionTest methodsFor!

newStrategy	^ WAQueryFieldHandlerTrackingStrategy new!

testAddKeyToContext	| context |	context := self requestContext.	strategy addKey: 'The_Metaphor' toContext: context.	self assertNoCookies: context!

testAddKeyToUrl	| context uri |	context := self requestContext.	uri := context request uri copy.	strategy addKey: 'The_Metaphor' toUrl: uri.	self assert: uri greaseString = '/catspajamassc2?_s=The_Metaphor'!

testNoHandlerFoundForKey	| context notified |	context := self requestContext.	notified := false.	[ strategy		noHandlerFoundForKey: 'The_Birthday_Massacre'		in: self newApplication		context: context ]		on: WAResponseNotification		do: [ :notification | notified := true ].	self assert: notified.	self assertNotFound: context! !
!WAQueryFieldHandlerTrackingStrategySessionTest categoriesFor: #newStrategy!private! !
!WAQueryFieldHandlerTrackingStrategySessionTest categoriesFor: #testAddKeyToContext!public!tests! !
!WAQueryFieldHandlerTrackingStrategySessionTest categoriesFor: #testAddKeyToUrl!public!tests! !
!WAQueryFieldHandlerTrackingStrategySessionTest categoriesFor: #testNoHandlerFoundForKey!public!tests! !

