"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WACacheTest
	instanceVariableNames: 'cache'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACacheTest guid: (GUID fromString: '{c09408a4-3e2f-4da5-a228-343c70c663d9}')!

WACacheTest comment: ''!

!WACacheTest categoriesForClass!Seaside-Tests-Core-Cache! !

!WACacheTest methodsFor!

createCache	self subclassResponsibility!

setUp	cache := self createCache!

testAtPut	1 to: 100 do: [ :i |		| absent mapped |		absent := false.		cache at: i ifAbsent: [ absent := true ].		self assert: absent.		mapped := cache at: i put: i greaseString.		self assert: mapped = i greaseString.		mapped := cache at: i ifAbsent: [ self assert: false ].		self assert: mapped = i greaseString ]!

testAtPutOverwrite	1 to: 100 do: [ :i |		| absent mapped |		absent := false.		cache at: i ifAbsent: [ absent := true ].		self assert: absent.		cache at: i put: 'zork'.		mapped := cache at: i put: i greaseString.		self assert: mapped = i greaseString.		mapped := cache at: i ifAbsent: [ self assert: false ].		self assert: mapped = i greaseString ]!

testKeysAndValuesDo	| reference readBack |	reference := Dictionary new.	1 to: 100 do: [ :i |		cache at: i put: i greaseString.		reference at: i put: i greaseString ].		readBack := Dictionary new.	cache keysAndValuesDo: [ :key :value |		readBack at: key put: value ].		self assert: readBack = reference!

testStore	| generator |	generator := WAPrecomputedKeyGenerator keys: #(1 1 1 2 2 2 3).	WAKeyGenerator		use: generator		during: [			self assert: (cache store: 'key1') = 1.			self assert: (cache store: 'key2') = 2.			self assert: (cache store: 'key3') = 3 ]! !

!WACacheTest categoriesForMethods!
createCache!private! !
setUp!public!running! !
testAtPut!public!testing! !
testAtPutOverwrite!public!testing! !
testKeysAndValuesDo!public!testing! !
testStore!public!testing! !
!

!WACacheTest class methodsFor!

isAbstract	^ self name = #WACacheTest! !

!WACacheTest class categoriesForMethods!
isAbstract!public!testing! !
!

