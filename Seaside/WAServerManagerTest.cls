"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAServerManagerTest
	instanceVariableNames: 'adaptor manager'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAServerManagerTest guid: (GUID fromString: '{6f66abc2-943b-4e89-bcbd-70958365fe3b}')!

WAServerManagerTest comment: ''!

!WAServerManagerTest categoriesForClass!Server! !

!WAServerManagerTest methodsFor!

availablePort	"This method should always return an unused port for the server manager"		^ (manager adaptors collect: [ :each | each port ]) asSet max + 1!

setUp	super setUp.	manager := WAServerManager new.	adaptor := WATestServerAdaptor manager: manager.	adaptor port: 12345.	adaptor running.	self assert: adaptor isRunning.	self assert: (manager adaptors includes: adaptor)!

tearDown	super tearDown.	adaptor stopped.	self assert: adaptor isStopped.	manager unregister: adaptor.	self deny: (manager adaptors includes: adaptor)!

testBeDefault	| previous |	previous := WAServerManager default.	[     	WATestServerManager beDefault.    	self		  assert: WAServerManager default class		  equals: WATestServerManager	 ] ensure: [ 		WAServerManager setDefault: previous 	 ]!

testCanStartWithAvailablePort	| adaptor1 |	adaptor starting.	self deny: (manager canStart: adaptor).	adaptor running.	self deny: (manager canStart: adaptor).	adaptor stopping.	self deny: (manager canStart: adaptor).	adaptor stopped.	self assert: (manager canStart: adaptor).		adaptor1 := WATestServerAdaptor manager: manager.	adaptor1 port: adaptor port.	adaptor1 stopped.	self assert: (manager canStart: adaptor1)!

testCanStartWithUnavailablePort	| adaptor1 |	adaptor1 := WATestServerAdaptor manager: manager.	adaptor1 port: adaptor port.	adaptor1 starting.	self deny: (manager canStart: adaptor1).	adaptor1 running.	self deny: (manager canStart: adaptor1).	adaptor1 stopping.	self deny: (manager canStart: adaptor1).	adaptor1 stopped.	self deny: (manager canStart: adaptor1)!

testCanStop	adaptor starting.	self assert: (manager canStop: adaptor).	adaptor running.	self assert: (manager canStop: adaptor).	adaptor stopping.	self assert: (manager canStop: adaptor).	adaptor stopped.	self deny: (manager canStop: adaptor)!

testSetDefault	| previous |	previous := WAServerManager default.	[ 		WAServerManager setDefault: WATestServerManager new.		self			assert: WAServerManager default class			equals: WATestServerManager	] ensure: [ 		WAServerManager setDefault: previous	]! !

!WAServerManagerTest categoriesForMethods!
availablePort!private! !
setUp!public!running! !
tearDown!public!running! !
testBeDefault!public!tests! !
testCanStartWithAvailablePort!public!tests! !
testCanStartWithUnavailablePort!public!tests! !
testCanStop!public!tests! !
testSetDefault!public!tests! !
!

