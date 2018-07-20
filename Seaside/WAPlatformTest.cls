"Filed out from Dolphin Smalltalk 7"!

GRPlatformTest subclass: #WAPlatformTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPlatformTest guid: (GUID fromString: '{5c78a017-92cf-49e0-8acb-4dd1476006d6}')!
WAPlatformTest comment: ''!
!WAPlatformTest categoriesForClass!Seaside-Tests-Core! !
!WAPlatformTest methodsFor!

testSeasideVersion	self assert: (self platform seasideVersion isKindOf: GRVersion)! !
!WAPlatformTest categoriesFor: #testSeasideVersion!public!tests! !

