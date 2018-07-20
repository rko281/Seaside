"Filed out from Dolphin Smalltalk 7"!

WABulkReapingCacheTest subclass: #WADolphinBulkReapingCacheTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADolphinBulkReapingCacheTest guid: (GUID fromString: '{42853b5c-ee0f-4617-857c-dafdee68cfc4}')!
WADolphinBulkReapingCacheTest comment: ''!
!WADolphinBulkReapingCacheTest categoriesForClass!Seaside-Tests-Core-Cache! !
!WADolphinBulkReapingCacheTest methodsFor!

testExpireAbsolute	"	max age: 3 sec		put 1	wait 2 sec	put 2	wait 2 sec		1 should be expired	2 should not be expired"	| absent |	self workAroundPharo3Bug.		cache := WABulkReapingCache		initialSize: 13		maximumSize: 10		maximumAbsoluteAge: 3		maximumRelativeAge: 0		overflowAction: WAHashCache signalError.			cache at: 1 put: '1'.	(Delay forSeconds: 2) wait.	cache at: 2 put: '2'.	(Delay forSeconds: 2) wait.	self assert: cache reap = 1 description: 'should reap exactly one item'.		"1 should be gone"	absent := false.	cache at: 1 ifAbsent: [ absent := true ].	self assert: absent description: 'the oldest item should be gone'.		"2 should still be there"	self assert: (cache at: 2 ifAbsent: [ self assert: false ]) = '2' description: 'the newest item should not be gone'!

testExpireRelative	"	max age: 3 sec		put 1	put 2	wait 2 sec	access 1	wait 2 sec		1 should not be expired	2 should be expired"	| absent |	self workAroundPharo3Bug.		cache := WABulkReapingCache		initialSize: 13		maximumSize: 10		maximumAbsoluteAge: 0		maximumRelativeAge: 3		overflowAction: WAHashCache signalError.			cache at: 1 put: '1'.	cache at: 2 put: '2'.	(Delay forSeconds: 2) wait.	cache at: 1 ifAbsent: [ self assert: false ].	(Delay forSeconds: 2) wait.	self assert: cache reap = 1 description: 'should reap exactly one item'.		"1 should still be there"	self assert: (cache at: 1 ifAbsent: [ self assert: false ]) = '1'.		"2 should be gone"	absent := false.	cache at: 2 ifAbsent: [ absent := true ].	self assert: absent! !
!WADolphinBulkReapingCacheTest categoriesFor: #testExpireAbsolute!public!testing! !
!WADolphinBulkReapingCacheTest categoriesFor: #testExpireRelative!public!testing! !

