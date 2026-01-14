"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WATestsFunctionalPlatformTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATestsFunctionalPlatformTest guid: (GUID fromString: '{5a1a0bd0-0b14-4133-a2c5-ae0a3a42725d}')!

WATestsFunctionalPlatformTest comment: ''!

!WATestsFunctionalPlatformTest categoriesForClass!Seaside-Tests-Functional! !

!WATestsFunctionalPlatformTest methodsFor!

testGarbageCollect	self 		shouldnt: [ GRPlatform current seasideGarbageCollect ]		raise: MessageNotUnderstood! !

!WATestsFunctionalPlatformTest categoriesForMethods!
testGarbageCollect!public!tests! !
!

