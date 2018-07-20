"Filed out from Dolphin Smalltalk 7"!

WAExpiringCacheTest subclass: #WAHashCacheTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHashCacheTest guid: (GUID fromString: '{f329b1d1-85af-40de-b2fc-ede99074ee29}')!
WAHashCacheTest comment: ''!
!WAHashCacheTest categoriesForClass!Seaside-Tests-Core-Cache! !
!WAHashCacheTest methodsFor!

createCache	^ WAHashCache		initialSize: 13		maximumSize: 0		maximumAbsoluteAge: 0		maximumRelativeAge: 0		overflowAction: WAHashCache signalError!

testExpireAbsolute	"	max age: 3 sec		put 1	wait 2 sec	put 2	wait 2 sec		1 should be expired	2 should not be expired"	| delay absent |	cache := WAHashCache		initialSize: 13		maximumSize: 10		maximumAbsoluteAge: 3		maximumRelativeAge: 0		overflowAction: WAHashCache signalError.	delay := Delay forSeconds: 2.			cache at: 1 put: '1'.	delay wait.	cache at: 2 put: '2'.	delay wait.		"1 should be gone"	absent := false.	cache at: 1 ifAbsent: [ absent := true ].	self assert: absent.		"2 should still be there"	self assert: (cache at: 2 ifAbsent: [ self assert: false ]) = '2'!

testExpireRelative	"	max age: 3 sec		put 1	put 2	wait 2 sec	access 1	wait 2 sec		1 should not be expired	2 should be expired"	| delay absent |	cache := WAHashCache		initialSize: 13		maximumSize: 10		maximumAbsoluteAge: 0		maximumRelativeAge: 3		overflowAction: WAHashCache signalError.	delay := Delay forSeconds: 2.			cache at: 1 put: '1'.	cache at: 2 put: '2'.	delay wait.		cache at: 1 ifAbsent: [ self assert: false ].	delay wait.		"1 should still be there"	self assert: (cache at: 1 ifAbsent: [ self assert: false ]) = '1'.		"2 should be gone"	absent := false.	cache at: 2 ifAbsent: [ absent := true ].	self assert: absent!

testRemoveAbsoluteOldest	cache := WAHashCache		initialSize: 13		maximumSize: 10		maximumAbsoluteAge: 0		maximumRelativeAge: 0		overflowAction: WAHashCache removeAbsoluteOldest.			1 to: 20 do: [ :i |		cache at: i put: i greaseString ].		1 to: 10 do: [ :i |		| absent |		absent := false.		cache at: i ifAbsent: [ absent := true ].		self assert: absent ].		11 to: 20 do: [ :i |		| mapped |		mapped := cache at: i ifAbsent: [ self assert: false ].		self assert: mapped = i greaseString ]!

testRemoveRelativeOldest	"set maximum size = 10	add 1, 2, ... 10	access 1, 2, ... 9 -> 10 has not been accessed for the most time	add 11	1, 2, ...9, 11 should be in map"	| tenMissing |	cache := WAHashCache		initialSize: 13		maximumSize: 10		maximumAbsoluteAge: 0		maximumRelativeAge: 0		overflowAction: WAHashCache removeRelativeOldest.			1 to: 10 do: [ :i |		cache at: i put: i greaseString ].		"access every but 10"	1 to: 9 do: [ :i |		cache at: i ifAbsent: [ self assert: false ] ].		cache at: 11 put: '11'.		1 to: 9 do: [ :i |		self assert: (cache at: i ifAbsent: [ self assert: false ]) = i greaseString ].		self assert: (cache at: 11 ifAbsent: [ self assert: false ]) = '11'.		tenMissing := false.	cache at: 10 ifAbsent: [ tenMissing := true ].	self assert: tenMissing	!

testSendUnregistered	"	max age: 1 sec		put 1	wait 2 sec		1 should be expired and have received #unregistered"	| delay value absent |	cache := WAHashCache		initialSize: 13		maximumSize: 10		maximumAbsoluteAge: 1		maximumRelativeAge: 0		overflowAction: WAHashCache signalError.	delay := Delay forSeconds: 2.		value := WAObjectUnderstandingUnregistered new.	self deny: value hasReceivedUnregistered.	cache at: 1 put: value.	delay wait.		"1 should be gone"	absent := false.	cache at: 1 ifAbsent: [ absent := true ].	self assert: absent.		self assert: value hasReceivedUnregistered!

testSignalError	cache := WAHashCache		initialSize: 13		maximumSize: 10		maximumAbsoluteAge: 0		maximumRelativeAge: 0		overflowAction: WAHashCache signalError.			1 to: 10 do: [ :i |		cache at: i put: i greaseString ].		self should: [ cache at: 11 put: '11' ] raise: WAMaximumNumberOfSessionsExceededError! !
!WAHashCacheTest categoriesFor: #createCache!public!running! !
!WAHashCacheTest categoriesFor: #testExpireAbsolute!public!testing! !
!WAHashCacheTest categoriesFor: #testExpireRelative!public!testing! !
!WAHashCacheTest categoriesFor: #testRemoveAbsoluteOldest!public!testing! !
!WAHashCacheTest categoriesFor: #testRemoveRelativeOldest!public!testing! !
!WAHashCacheTest categoriesFor: #testSendUnregistered!public!testing! !
!WAHashCacheTest categoriesFor: #testSignalError!public!testing! !

