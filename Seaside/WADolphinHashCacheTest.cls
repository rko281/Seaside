"Filed out from Dolphin Smalltalk"!

WAHashCacheTest subclass: #WADolphinHashCacheTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADolphinHashCacheTest guid: (GUID fromString: '{b559f14f-601b-4811-8337-6988e8e2362d}')!

WADolphinHashCacheTest comment: ''!

!WADolphinHashCacheTest categoriesForClass!Seaside-Tests-Core-Cache! !

!WADolphinHashCacheTest methodsFor!

testExpireAbsolute	"	max age: 3 sec		put 1	wait 2 sec	put 2	wait 2 sec		1 should be expired	2 should not be expired"	| absent |	cache := WAHashCache		initialSize: 13		maximumSize: 10		maximumAbsoluteAge: 3		maximumRelativeAge: 0		overflowAction: WAHashCache signalError.			cache at: 1 put: '1'.	(Delay forSeconds: 2) wait.	cache at: 2 put: '2'.	(Delay forSeconds: 2) wait.		"1 should be gone"	absent := false.	cache at: 1 ifAbsent: [ absent := true ].	self assert: absent.		"2 should still be there"	self assert: (cache at: 2 ifAbsent: [ self assert: false ]) = '2'!

testExpireRelative	"	max age: 3 sec		put 1	put 2	wait 2 sec	access 1	wait 2 sec		1 should not be expired	2 should be expired"	| absent |	cache := WAHashCache		initialSize: 13		maximumSize: 10		maximumAbsoluteAge: 0		maximumRelativeAge: 3		overflowAction: WAHashCache signalError.			cache at: 1 put: '1'.	cache at: 2 put: '2'.	(Delay forSeconds: 2) wait.		cache at: 1 ifAbsent: [ self assert: false ].	(Delay forSeconds: 2) wait.		"1 should still be there"	self assert: (cache at: 1 ifAbsent: [ self assert: false ]) = '1'.		"2 should be gone"	absent := false.	cache at: 2 ifAbsent: [ absent := true ].	self assert: absent! !

!WADolphinHashCacheTest categoriesForMethods!
testExpireAbsolute!public!testing! !
testExpireRelative!public!testing! !
!

