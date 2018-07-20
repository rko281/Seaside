"Filed out from Dolphin Smalltalk 7"!

WASessionTrackingStrategyTest subclass: #WAInvisibleSessionTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAInvisibleSessionTrackingStrategyTest guid: (GUID fromString: '{84dd24ec-9361-496e-86fe-3323d5fbc0e5}')!
WAInvisibleSessionTrackingStrategyTest comment: ''!
!WAInvisibleSessionTrackingStrategyTest categoriesForClass!Seaside-Tests-Session! !
!WAInvisibleSessionTrackingStrategyTest methodsFor!

sessionId	self subclassResponsibility!

testAddKeyOfSessionToContext	| context |	context := self requestContext.	strategy addKey: 'The_Metaphor' toContext: context.	self assertNoCookies: context!

testAddKeyOfSessionToUrl	| context uri |	context := self requestContext.	uri := context request uri copy.	strategy addKey: 'The_Metaphor' toUrl: uri.	self assert: uri greaseString = '/catspajamassc2'!

testKeyFromIpAddress	| context actual |	context := self requestContext.	actual := strategy keyFromContext: context.	self assert: actual = self sessionId!

testKeyFromQueryField	| context actual |	context := self requestContext.	context request uri addField: strategy keyField value: '4e232e46-003d2-04324-d3ac8fa8'.	actual := strategy keyFromContext: context.	self assert: actual = '4e232e46-003d2-04324-d3ac8fa8'!

testNoHandlerFoundForDocumentHandlerKey	| context notified |	context := self requestContext.	strategy		addKey: 'The_Birthday_Massacre'		toUrl: context request uri copy.	notified := false.	[ strategy		noHandlerFoundForKey: 'The_Birthday_Massacre'		in: self newApplication		context: context ]		on: WAResponseNotification		do: [ :notification | notified := true ].	self assert: notified.	self assertNotFound: context!

testNoHandlerFoundForSessionKey	| context application cache session |	context := self requestContext.	application := self newApplication.	[ strategy		noHandlerFoundForKey: self sessionId		in: application		context: context ]		on: WAResponseNotification		do: [ :notification | "ignore" ].	self assertOk: context.	cache := application cache.	self assert: cache size = 1.	session := cache at: self sessionId ifAbsent: [ nil ].	self deny: session isNil.	self assert: session isSession! !
!WAInvisibleSessionTrackingStrategyTest categoriesFor: #sessionId!private! !
!WAInvisibleSessionTrackingStrategyTest categoriesFor: #testAddKeyOfSessionToContext!public!tests! !
!WAInvisibleSessionTrackingStrategyTest categoriesFor: #testAddKeyOfSessionToUrl!public!tests! !
!WAInvisibleSessionTrackingStrategyTest categoriesFor: #testKeyFromIpAddress!public!tests! !
!WAInvisibleSessionTrackingStrategyTest categoriesFor: #testKeyFromQueryField!public!tests! !
!WAInvisibleSessionTrackingStrategyTest categoriesFor: #testNoHandlerFoundForDocumentHandlerKey!public!tests! !
!WAInvisibleSessionTrackingStrategyTest categoriesFor: #testNoHandlerFoundForSessionKey!public!tests! !

!WAInvisibleSessionTrackingStrategyTest class methodsFor!

isAbstract	^ self name = #WAInvisibleSessionTrackingStrategyTest! !
!WAInvisibleSessionTrackingStrategyTest class categoriesFor: #isAbstract!public!testing! !

