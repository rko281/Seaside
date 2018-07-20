"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WACacheTest
	instanceVariableNames: 'cache'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACacheTest guid: (GUID fromString: '{edadf8d7-b470-4416-aa3d-93f74ce05136}')!
WACacheTest comment: ''!
!WACacheTest categoriesForClass!Seaside-Tests-Core-Cache! !
!WACacheTest methodsFor!

createCache	self subclassResponsibility!

setUp	cache := self createCache!

testAtPut	1 to: 100 do: [ :i |		| absent mapped |		absent := false.		cache at: i ifAbsent: [ absent := true ].		self assert: absent.		mapped := cache at: i put: i greaseString.		self assert: mapped = i greaseString.		mapped := cache at: i ifAbsent: [ self assert: false ].		self assert: mapped = i greaseString ]!

testAtPutOverwrite	1 to: 100 do: [ :i |		| absent mapped |		absent := false.		cache at: i ifAbsent: [ absent := true ].		self assert: absent.		cache at: i put: 'zork'.		mapped := cache at: i put: i greaseString.		self assert: mapped = i greaseString.		mapped := cache at: i ifAbsent: [ self assert: false ].		self assert: mapped = i greaseString ]!

testKeysAndValuesDo	| reference readBack |	reference := Dictionary new.	1 to: 100 do: [ :i |		cache at: i put: i greaseString.		reference at: i put: i greaseString ].		readBack := Dictionary new.	cache keysAndValuesDo: [ :key :value |		readBack at: key put: value ].		self assert: readBack = reference!

testStore	| generator |	generator := WAPrecomputedKeyGenerator keys: #(1 1 1 2 2 2 3).	WAKeyGenerator		use: generator		during: [			self assert: (cache store: 'key1') = 1.			self assert: (cache store: 'key2') = 2.			self assert: (cache store: 'key3') = 3 ]! !
!WACacheTest categoriesFor: #createCache!private! !
!WACacheTest categoriesFor: #setUp!public!running! !
!WACacheTest categoriesFor: #testAtPut!public!testing! !
!WACacheTest categoriesFor: #testAtPutOverwrite!public!testing! !
!WACacheTest categoriesFor: #testKeysAndValuesDo!public!testing! !
!WACacheTest categoriesFor: #testStore!public!testing! !

!WACacheTest class methodsFor!

isAbstract	^ self name = #WACacheTest! !
!WACacheTest class categoriesFor: #isAbstract!public!testing! !

