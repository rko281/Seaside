"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAMergedRequestFieldsTest
	instanceVariableNames: 'merged one two'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMergedRequestFieldsTest guid: (GUID fromString: '{2af744fb-1787-49ac-bb1b-dd787efea9cd}')!

WAMergedRequestFieldsTest comment: ''!

!WAMergedRequestFieldsTest categoriesForClass!Seaside-Tests-Core-HTTP! !

!WAMergedRequestFieldsTest methodsFor!

setUp	merged := WAMergedRequestFields on: (Array 		with: (one := WARequestFields new) 		with: (two := WARequestFields new))!

testAllAt	one at: 'one' put: 1.	one at: 'both' put: 1.	two at: 'two' put: 2.	two at: 'both' put: 2.		self assert: (merged allAt: 'one') = #(1).	self assert: (merged allAt: 'two') = #(2).	self assert: (merged allAt: 'both') = #(1 2).	self assert: (merged allAt: 'neither') = #()!

testAllAtIfAbsent	one at: 'one' put: 1.	one at: 'both' put: 1.	two at: 'two' put: 2.	two at: 'both' put: 2.		self assert: (merged allAt: 'one' ifAbsent: [ 'absent' ]) = #(1).	self assert: (merged allAt: 'two' ifAbsent: [ 'absent' ]) = #(2).	self assert: (merged allAt: 'both' ifAbsent: [ 'absent' ]) = #(1 2).	self assert: (merged allAt: 'neither' ifAbsent: [ 'absent' ]) = 'absent'!

testAssociationsDo	| keys values |	one at: 'foo' put: 1.	two at: 'bar' put: 2.	two at: 'foo' put: 3.	keys := OrderedCollection new.	values := OrderedCollection new.	merged associationsDo: [ :assoc | 		keys add: assoc key.		values add: assoc value ].	self assert: keys asArray = #('foo' 'bar' 'foo').	self assert: values asArray = #(1 2 3)!

testAt	one at: 'foo' put: 1.	two at: 'bar' put: 2.	self assert: (merged at: 'foo') = 1.	self assert: (merged at: 'bar') = 2.	two at: 'foo' put: 3.	self assert: (merged at: 'foo') = 1.	self assert: (merged at: 'zork') isNil!

testAtIfAbsent	one at: 'foo' put: 1.	two at: 'bar' put: 2.	self assert: (merged at: 'foo' ifAbsent: [ true ]) = 1.	self assert: (merged at: 'bar' ifAbsent: [ true ]) = 2.	two at: 'foo' put: 3.	self assert: (merged at: 'foo' ifAbsent: [ true ]) = 1.	self assert: (merged at: 'zork' ifAbsent: [ true ])!

testAtIfPresent	one at: 'foo' put: 1.	two at: 'bar' put: 2.	self assert: (merged 		at: 'foo' 		ifPresent: [ :value | self assert: value = 1. true ]).	self assert: (merged		at: 'bar'		ifPresent: [ :value | self assert: value = 2. true ]).	two at: 'foo' put: 3.	self assert: (merged 		at: 'foo' 		ifPresent: [ :value | self assert: value = 1. true ]).	merged		at: 'zork'		ifPresent: [ :value | self assert: false ]!

testDo	| result |	one at: 'foo' put: 1.	two at: 'bar' put: 2.	two at: 'foo' put: 3.	result := OrderedCollection new.	merged do: [ :each | result add: each ].	self assert: result asArray = #(1 2 3)!

testIncludesKey	one at: 'foo' put: 1.	two at: 'baz' put: 3.	two at: 'bar' put: 2.	two at: 'baz' put: 3.	self assert: (merged includesKey: 'foo').	self assert: (merged includesKey: 'bar').	self assert: (merged includesKey: 'baz').	self deny: (merged includesKey: 'zork')!

testIsEmpty	self assert: merged isEmpty.	two at: 'bar' put: 2.	self deny: merged isEmpty.	two removeKey: 'bar'.	one at: 'foo' put: 1.	self deny: merged isEmpty.	two at: 'foo' put: 2.	self deny: merged isEmpty!

testKeyNotFound	self assert: (merged at: 'foo') isNil!

testKeys	one at: 'foo' put: 1.	two at: 'bar' put: 2.	two at: 'foo' put: 3.	self assert: merged keys asArray = #('foo' 'bar' 'foo')!

testKeysAndValuesDo	| keys values |	one at: 'foo' put: 1.	two at: 'bar' put: 2.	two at: 'foo' put: 3.	keys := OrderedCollection new.	values := OrderedCollection new.	merged keysAndValuesDo: [ :key :value | 		keys add: key.		values add: value ].	self assert: keys asArray = #('foo' 'bar' 'foo').	self assert: values asArray = #(1 2 3)!

testKeysDo	| result |	one at: 'foo' put: 1.	two at: 'bar' put: 2.	two at: 'foo' put: 3.	result := OrderedCollection new.	merged keysDo: [ :each | result add: each ].	self assert: result asArray = #('foo' 'bar' 'foo')!

testReadOnly	self		should: [ merged at: 'foo' put: 1 ]		raise: Error.	self		should: [ merged at: 'foo' ifAbsentPut: [ 1 ] ]		raise: Error.	self		should: [ merged removeKey: 'foo' ]		raise: Error!

testSize	self assert: merged size = 0.	one at: 'foo' put: 1.	self assert: merged size = 1.	two at: 'foo' put: 2.	self assert: merged size = 2.	two at: 'bar' put: 4.	self assert: merged size = 3!

testValues	one at: 'foo' put: 1.	two at: 'bar' put: 2.	two at: 'foo' put: 3.	self assert: merged values asArray = #(1 2 3)! !

!WAMergedRequestFieldsTest categoriesForMethods!
setUp!public!running! !
testAllAt!public!tests/accessing! !
testAllAtIfAbsent!public!tests/accessing! !
testAssociationsDo!public!tests/enumerating! !
testAt!public!tests/accessing! !
testAtIfAbsent!public!tests/accessing! !
testAtIfPresent!public!tests/accessing! !
testDo!public!tests/enumerating! !
testIncludesKey!public!tests/testing! !
testIsEmpty!public!tests/testing! !
testKeyNotFound!public!tests! !
testKeys!public!tests/enumerating! !
testKeysAndValuesDo!public!tests/enumerating! !
testKeysDo!public!tests/enumerating! !
testReadOnly!public!tests! !
testSize!public!tests/accessing! !
testValues!public!tests/enumerating! !
!

