"Filed out from Dolphin Smalltalk"!

GRPlatformTest subclass: #WAPlatformTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPlatformTest guid: (GUID fromString: '{c1669a41-8952-4a03-bfcf-4800f42ac313}')!

WAPlatformTest comment: 'I contain unit tests for Seaside class extensions on GRPlatform.'!

!WAPlatformTest categoriesForClass!Base! !

!WAPlatformTest methodsFor!

testSeasideVersion	self assert: (self platform seasideVersion isKindOf: GRVersion)! !

!WAPlatformTest categoriesForMethods!
testSeasideVersion!public!tests! !
!

