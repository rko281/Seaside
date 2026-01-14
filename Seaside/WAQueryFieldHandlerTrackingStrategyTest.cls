"Filed out from Dolphin Smalltalk"!

WAHandlerTrackingStrategyTest subclass: #WAQueryFieldHandlerTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAQueryFieldHandlerTrackingStrategyTest guid: (GUID fromString: '{a644801b-8733-45ee-a07f-68a89fe74802}')!

WAQueryFieldHandlerTrackingStrategyTest comment: ''!

!WAQueryFieldHandlerTrackingStrategyTest categoriesForClass!Seaside-Tests-Core-RequestHandling! !

!WAQueryFieldHandlerTrackingStrategyTest methodsFor!

newStrategy	^ WAQueryFieldHandlerTrackingStrategy new!

testAddKeyToContext	| context |	context := self requestContext.	strategy addKey: 'The_Metaphor' toContext: context.	self assertNoCookies: context!

testAddKeyToUrl	| context uri |	context := self requestContext.	uri := context request uri copy.	strategy addKey: 'The_Metaphor' toUrl: uri.	self assert: uri greaseString = '/catspajamassc2?_s=The_Metaphor'!

testKeyButNotValue	| context actual |	context := self requestContext.	context request uri addField: strategy keyField.	actual := strategy keyFromContext: context.	self assert: actual isNil!

testKeyPresent	| context actual |	context := self requestContext.	context request uri addField: strategy keyField value: '4e232e46-003d2-04324-d3ac8fa8'.	actual := strategy keyFromContext: context.	self assert: actual = '4e232e46-003d2-04324-d3ac8fa8'!

testNoKey	| actual |	actual := strategy keyFromContext: self requestContext.	self assert: actual isNil! !

!WAQueryFieldHandlerTrackingStrategyTest categoriesForMethods!
newStrategy!private! !
testAddKeyToContext!public!tests! !
testAddKeyToUrl!public!tests! !
testKeyButNotValue!public!tests! !
testKeyPresent!public!tests! !
testNoKey!public!tests! !
!

