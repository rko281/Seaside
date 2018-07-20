"Filed out from Dolphin Smalltalk 7"!

WAHandlerTrackingStrategyTest subclass: #WAQueryFieldHandlerTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAQueryFieldHandlerTrackingStrategyTest guid: (GUID fromString: '{5ddb79b4-fd3e-45de-b2cd-f2d7919630a3}')!
WAQueryFieldHandlerTrackingStrategyTest comment: ''!
!WAQueryFieldHandlerTrackingStrategyTest categoriesForClass!Seaside-Tests-Core-RequestHandling! !
!WAQueryFieldHandlerTrackingStrategyTest methodsFor!

newStrategy	^ WAQueryFieldHandlerTrackingStrategy new!

testAddKeyToContext	| context |	context := self requestContext.	strategy addKey: 'The_Metaphor' toContext: context.	self assertNoCookies: context!

testAddKeyToUrl	| context uri |	context := self requestContext.	uri := context request uri copy.	strategy addKey: 'The_Metaphor' toUrl: uri.	self assert: uri greaseString = '/catspajamassc2?_s=The_Metaphor'!

testKeyButNotValue	| context actual |	context := self requestContext.	context request uri addField: strategy keyField.	actual := strategy keyFromContext: context.	self assert: actual isNil!

testKeyPresent	| context actual |	context := self requestContext.	context request uri addField: strategy keyField value: '4e232e46-003d2-04324-d3ac8fa8'.	actual := strategy keyFromContext: context.	self assert: actual = '4e232e46-003d2-04324-d3ac8fa8'!

testNoKey	| actual |	actual := strategy keyFromContext: self requestContext.	self assert: actual isNil! !
!WAQueryFieldHandlerTrackingStrategyTest categoriesFor: #newStrategy!private! !
!WAQueryFieldHandlerTrackingStrategyTest categoriesFor: #testAddKeyToContext!public!tests! !
!WAQueryFieldHandlerTrackingStrategyTest categoriesFor: #testAddKeyToUrl!public!tests! !
!WAQueryFieldHandlerTrackingStrategyTest categoriesFor: #testKeyButNotValue!public!tests! !
!WAQueryFieldHandlerTrackingStrategyTest categoriesFor: #testKeyPresent!public!tests! !
!WAQueryFieldHandlerTrackingStrategyTest categoriesFor: #testNoKey!public!tests! !

