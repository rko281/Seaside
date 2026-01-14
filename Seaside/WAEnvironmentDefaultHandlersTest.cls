"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAEnvironmentDefaultHandlersTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAEnvironmentDefaultHandlersTest guid: (GUID fromString: '{bd43178f-b22e-4765-a924-9a763ba65b0e}')!

WAEnvironmentDefaultHandlersTest comment: 'I contain unit test for default handlers of the environment.'!

!WAEnvironmentDefaultHandlersTest categoriesForClass!Seaside-Tests-Environment-Base! !

!WAEnvironmentDefaultHandlersTest methodsFor!

defaultDispatcher	^ WAAdmin defaultDispatcher!

testDefaultFiles	| app |	app := self defaultDispatcher handlerAt: 'files'.	self assert: app class == WAFileHandler.	self deny: app isDispatcher.	self deny: app isApplication.	self deny: app parent isNil.	self assert: app name = 'files'.	self assert: app url pathStringUnencoded = '/files'!

testDefaultRoot	| app |	app := self defaultDispatcher.	self assert: app class == WADispatcher.	self assert: app isDispatcher.	self assert: app isRoot.	self deny: app isApplication.	self assert: app parent isNil.	self assert: app name = ''.	self assert: app url pathStringUnencoded = '/'!

testInvalidConfig	| app |	app := self defaultDispatcher handlerAt: 'examplesxyz/counter' ifAbsent: [ nil ].	self assert: app isNil.	app := self defaultDispatcher handlerAt: 'examples/counterxyz' ifAbsent: [ nil ].	self assert: app isNil! !

!WAEnvironmentDefaultHandlersTest categoriesForMethods!
defaultDispatcher!private! !
testDefaultFiles!public!tests! !
testDefaultRoot!public!tests! !
testInvalidConfig!public!tests! !
!

