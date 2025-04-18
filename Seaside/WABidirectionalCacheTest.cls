﻿"Filed out from Dolphin Smalltalk"!

WACacheTest subclass: #WABidirectionalCacheTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABidirectionalCacheTest guid: (GUID fromString: '{ae17e8c8-f52f-4f82-b733-a61644319a94}')!

WABidirectionalCacheTest comment: ''!

!WABidirectionalCacheTest categoriesForClass!Cache! !

!WABidirectionalCacheTest methodsFor!

createCache	^ WABidirectionalCache new!

testCopy	| copy absent |	cache at: 1 put: '1'.	cache at: 2 put: '2'.	copy := cache copy.		copy remove: '2'.	copy at: 1 put: '1a'.	copy at: 3 put: '3'.		"cache:		1 -> '1'		2 -> '2'	copy:		1 -> '1a'		3 -> '3'	"		self assert: (cache at: 1 ifAbsent: [ self assert: false ]) = '1'.	self assert: (cache at: 2 ifAbsent: [ self assert: false ]) = '2'.	self assert: (cache keyAtValue: '1' ifAbsent: [ self assert: false ]) = 1.	self assert: (cache keyAtValue: '2' ifAbsent: [ self assert: false ]) = 2.	absent := false.	cache at: 3 ifAbsent: [ absent := true ].	self assert: absent.	absent := false.	cache keyAtValue: '1a' ifAbsent: [ absent := true ].	self assert: absent.	cache keyAtValue: '3' ifAbsent: [ absent := true ].	self assert: absent.		self assert: (copy at: 1 ifAbsent: [ self assert: false ]) = '1a'.	self assert: (copy at: 3 ifAbsent: [ self assert: false ]) = '3'.	self assert: (copy keyAtValue: '1a' ifAbsent: [ self assert: false ]) = 1.	self assert: (copy keyAtValue: '3' ifAbsent: [ self assert: false ]) = 3.	absent := false.	copy at: 2 ifAbsent: [ absent := true ].	self assert: absent.	absent := false.	copy keyAtValue: '1' ifAbsent: [ absent := true ].	self assert: absent.	copy keyAtValue: '2' ifAbsent: [ absent := true ].	self assert: absent!

testKeyAtValue	1 to: 100 do: [ :i |		| absent key |		absent := false.		cache keyAtValue: i greaseString ifAbsent: [ absent := true ].		self assert: absent.		cache at: i put: i greaseString.		key := cache keyAtValue: i greaseString ifAbsent: [ self assert: false ].		self assert: key = i ]!

testMultipleMappings	cache at: 'key1' put: 'value'.	self should: [ cache at: 'key2' put: 'value' ] raise: Error!

testRemove	1 to: 100 do: [ :i |		cache at: i put: i greaseString ].		1 to: 100 do: [ :i |		| absent |		self assert: (cache at: i ifAbsent: [ self assert: false ]) = i greaseString.		cache remove: i greaseString.		absent := false.		cache at: i ifAbsent: [ absent := true ].		self assert: absent ]!

testValuesCollect	| values |	cache at: 1 put: '1'.	cache at: 2 put: '2'.		values := cache valuesCollect: [ :each |		each, each ].	self assert: values class == cache class.	self assert: values size = 2.	self assert: ((values at: 1 ifAbsent: [ nil ]) = '11').	self assert: ((values at: 2 ifAbsent: [ nil ]) = '22')! !

!WABidirectionalCacheTest categoriesForMethods!
createCache!public!running! !
testCopy!public!testing! !
testKeyAtValue!public!testing! !
testMultipleMappings!public!testing! !
testRemove!public!testing! !
testValuesCollect!public!testing! !
!

