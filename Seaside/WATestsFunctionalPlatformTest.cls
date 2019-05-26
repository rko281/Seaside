"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WATestsFunctionalPlatformTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATestsFunctionalPlatformTest guid: (GUID fromString: '{bca9951d-e84e-4caf-951b-e2a78cd848aa}')!
WATestsFunctionalPlatformTest comment: ''!
!WATestsFunctionalPlatformTest categoriesForClass!Seaside-Tests-Functional! !
!WATestsFunctionalPlatformTest methodsFor!

testGarbageCollect	self 		shouldnt: [ GRPlatform current seasideGarbageCollect ]		raise: MessageNotUnderstood! !
!WATestsFunctionalPlatformTest categoriesFor: #testGarbageCollect!public!tests! !

