"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WATestsFunctionalPlatformTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATestsFunctionalPlatformTest guid: (GUID fromString: '{1bfdbd2a-7248-41f5-a4fa-1f1b55ee57a7}')!

WATestsFunctionalPlatformTest comment: ''!

!WATestsFunctionalPlatformTest categoriesForClass!Unclassified! !

!WATestsFunctionalPlatformTest methodsFor!

testGarbageCollect	self 		shouldnt: [ GRPlatform current seasideGarbageCollect ]		raise: MessageNotUnderstood! !

!WATestsFunctionalPlatformTest categoriesForMethods!
testGarbageCollect!public!tests! !
!

