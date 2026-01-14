"Filed out from Dolphin Smalltalk"!

WAEnvironmentDefaultHandlersTest subclass: #WAPharoFunctionalTestsDefaultHandlersTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPharoFunctionalTestsDefaultHandlersTest guid: (GUID fromString: '{8c7d1c66-b188-4fb4-ab00-f6d439193dbc}')!

WAPharoFunctionalTestsDefaultHandlersTest comment: ''!

!WAPharoFunctionalTestsDefaultHandlersTest categoriesForClass!Unclassified! !

!WAPharoFunctionalTestsDefaultHandlersTest methodsFor!

testAllTests
	| app |
	app := self defaultDispatcher handlerAtAll: #('tests' 'functional').
	self assert: app class == WAApplication.
	self assert: app isApplication.
	self deny: app isDispatcher.
	self deny: app parent isNil.
	self assert: app name = 'functional'.
	self assert: app url pathStringUnencoded = '/tests/functional'!

testDefaultTests
	| app |
	app := self defaultDispatcher handlerAt: 'tests'.
	self assert: app class == WADispatcher.
	self assert: app isDispatcher.
	self deny: app isRoot.
	self deny: app isApplication.
	self deny: app parent isNil.
	self assert: app name = 'tests'.
	self assert: app url pathStringUnencoded = '/tests'! !

!WAPharoFunctionalTestsDefaultHandlersTest categoriesForMethods!
testAllTests!public!tests! !
testDefaultTests!public!tests! !
!

