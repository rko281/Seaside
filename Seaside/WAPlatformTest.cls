"Filed out from Dolphin Smalltalk 7"!

GRPlatformTest subclass: #WAPlatformTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPlatformTest guid: (GUID fromString: '{90b48da8-4151-42d9-8ae1-45649ffb748c}')!
WAPlatformTest comment: 'I contain unit tests for Seaside class extensions on GRPlatform.'!
!WAPlatformTest categoriesForClass!Seaside-Tests-Core-Base! !
!WAPlatformTest methodsFor!

testSeasideVersion	self assert: (self platform seasideVersion isKindOf: GRVersion)! !
!WAPlatformTest categoriesFor: #testSeasideVersion!public!tests! !

