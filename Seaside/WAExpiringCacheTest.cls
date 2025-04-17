"Filed out from Dolphin Smalltalk"!

WACacheTest subclass: #WAExpiringCacheTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAExpiringCacheTest guid: (GUID fromString: '{49eeeefe-1960-46e7-a69c-193f484a86b1}')!

WAExpiringCacheTest comment: ''!

!WAExpiringCacheTest categoriesForClass!Cache! !

!WAExpiringCacheTest methodsFor!

createCache	^ WAHashCache		initialSize: 13		maximumSize: 0		maximumAbsoluteAge: 0		maximumRelativeAge: 0		overflowAction: WAHashCache signalError!

testCopy	| copy absent |	cache at: 1 put: '1'.	cache at: 2 put: '2'.	copy := cache copy.		copy at: 1 put: '1a'.	copy at: 3 put: '3'.		"cache:		1 -> '1'		2 -> '2'	copy:		1 -> '1a'		2 -> '2'		3 -> '3'	"		self assert: (cache at: 1 ifAbsent: [ self assert: false ]) = '1'.	self assert: (cache at: 2 ifAbsent: [ self assert: false ]) = '2'.	absent := false.	cache at: 3 ifAbsent: [ absent := true ].	self assert: absent.		self assert: (copy at: 1 ifAbsent: [ self assert: false ]) = '1a'.	self assert: (cache at: 2 ifAbsent: [ self assert: false ]) = '2'.	self assert: (copy at: 3 ifAbsent: [ self assert: false ]) = '3'!

testRmoveKey	cache at: 1 put: '1'.	cache at: 2 put: '2'.	self assert: cache size = 2.		self assert: (cache removeKey: 2) = '2'.	self assert: cache size = 1.		self assert: (cache at: 1 ifAbsent: [ nil ]) = '1'.	self assert: (cache at: 2 ifAbsent: [ #missing ]) = #missing! !

!WAExpiringCacheTest categoriesForMethods!
createCache!public!running! !
testCopy!public!testing! !
testRmoveKey!public!testing! !
!

!WAExpiringCacheTest class methodsFor!

isAbstract	^ self name = #WAExpiringCacheTest! !

!WAExpiringCacheTest class categoriesForMethods!
isAbstract!public!testing! !
!

