"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAMutexTest
	instanceVariableNames: 'mutex process process2'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMutexTest guid: (GUID fromString: '{b7788aea-a492-4cff-b4ab-24b53981fb04}')!
WAMutexTest comment: ''!
!WAMutexTest categoriesForClass!Seaside-Tests-Core-Utilities! !
!WAMutexTest methodsFor!

setUp	super setUp.	mutex := WAMutex new!

tearDown	super tearDown.	process isNil ifFalse: [ GRPlatform current terminateProcess: process ].	process2 isNil ifFalse: [ GRPlatform current terminateProcess: process2 ].	"Clear instance variables so that GemStone does not attempt to persist a Semaphore"	mutex := nil.	process := nil.	process2 := nil!

testCopy	| semaphore1 semaphore2 copy |	semaphore1 := GRPlatform current semaphoreClass new.	semaphore2 := GRPlatform current semaphoreClass new.	process := [ mutex critical: 		[ semaphore1 signal.		semaphore2 wait ] ] newProcess.	process resume.	semaphore1 wait.	copy := mutex copy.	self deny: copy == mutex.	self assert: copy species = mutex species.	self assert: copy owner isNil.	self assert: (copy critical: [ 1 ]) = 1!

testExclusion	| value semaphore1 semaphore2 semaphore3 semaphore4 |	value := nil.	semaphore1 := GRPlatform current semaphoreClass new.	semaphore2 := GRPlatform current semaphoreClass new.	semaphore3 := GRPlatform current semaphoreClass new.	semaphore4 := GRPlatform current semaphoreClass new.	process := 	[ mutex critical: 		[ semaphore1 signal.		semaphore2 wait.		value := 1 ] ] newProcess.	process2 := 	[ semaphore3 signal.	mutex critical: 		[ semaphore3 signal.		semaphore4 wait.		value := 2.		semaphore3 signal ] ] newProcess.	process resume.	semaphore1 wait.	process2 resume.	semaphore3 wait.	self assert: mutex owner == process.	self assert: value isNil.	semaphore2 signal.	semaphore3 wait.	self assert: mutex owner == process2.	self assert: value = 1.	semaphore4 signal.	semaphore3 wait.	self assert: mutex owner isNil.	self assert: value = 2!

testMultipleEntry	| value |	value := mutex critical: [ mutex critical: [ 1 ] ].		self assert: value = 1.	self assert: mutex owner isNil!

testSelfTerminate	| value semaphore |	value := nil.	semaphore := GRPlatform current semaphoreClass new.	process := 	[ value := mutex critical: 		[ semaphore signal.		mutex terminateOwner.		1 ] ] newProcess.	process resume.	semaphore wait.	self assert: mutex owner isNil.	self assert: value isNil.	self assert: (GRPlatform current isProcessTerminated: process)!

testSimple	| value |	value := mutex critical: [ 1 ].		self assert: value = 1.	self assert: mutex owner isNil!

testTerminate	| value semaphore1 semaphore2 semaphore3 |	value := nil.	semaphore1 := GRPlatform current semaphoreClass new.	semaphore2 := GRPlatform current semaphoreClass new.	semaphore3 := GRPlatform current semaphoreClass new.	process := 	[ value := [ mutex critical: 		[ semaphore1 signal.		semaphore2 wait.		1 ] ] ensure: [ semaphore3 signal ] ] newProcess.	process resume.	semaphore1 wait.	self assert: mutex owner == process.	mutex terminateOwner.	semaphore3 wait.	self assert: mutex owner isNil.	self assert: value isNil.	self assert: (GRPlatform current isProcessTerminated: process)! !
!WAMutexTest categoriesFor: #setUp!public!running! !
!WAMutexTest categoriesFor: #tearDown!public!running! !
!WAMutexTest categoriesFor: #testCopy!public!tests! !
!WAMutexTest categoriesFor: #testExclusion!public!tests! !
!WAMutexTest categoriesFor: #testMultipleEntry!public!tests! !
!WAMutexTest categoriesFor: #testSelfTerminate!public!tests! !
!WAMutexTest categoriesFor: #testSimple!public!tests! !
!WAMutexTest categoriesFor: #testTerminate!public!tests! !

