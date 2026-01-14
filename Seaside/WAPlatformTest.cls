"Filed out from Dolphin Smalltalk"!

GRPlatformTest subclass: #WAPlatformTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPlatformTest guid: (GUID fromString: '{ff498d12-f769-4a9c-ba5c-233bd8c86f4b}')!

WAPlatformTest comment: 'I contain unit tests for Seaside class extensions on GRPlatform.'!

!WAPlatformTest categoriesForClass!Seaside-Tests-Core-Base! !

!WAPlatformTest methodsFor!

testSeasideVersion	self assert: (self platform seasideVersion isKindOf: GRVersion)! !

!WAPlatformTest categoriesForMethods!
testSeasideVersion!public!tests! !
!

