"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WATestsFunctionalPlatformTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATestsFunctionalPlatformTest guid: (GUID fromString: '{ab5d6c18-5790-41fe-9579-e7057ea6ddb0}')!
WATestsFunctionalPlatformTest comment: ''!
!WATestsFunctionalPlatformTest categoriesForClass!Seaside-Tests-Functional! !
!WATestsFunctionalPlatformTest methodsFor!

testGarbageCollect	self 		shouldnt: [ GRPlatform current seasideGarbageCollect ]		raise: MessageNotUnderstood! !
!WATestsFunctionalPlatformTest categoriesFor: #testGarbageCollect!public!tests! !

