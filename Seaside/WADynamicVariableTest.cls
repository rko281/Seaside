"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WADynamicVariableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADynamicVariableTest guid: (GUID fromString: '{10b5d4d6-c118-47b8-8f83-0755f1e374a6}')!

WADynamicVariableTest comment: ''!

!WADynamicVariableTest categoriesForClass!Seaside-Tests-Core-Utilities! !

!WADynamicVariableTest methodsFor!

testAnswer	self assert: (WADynamicVariable use: 'value' during: [ true ])!

testWithNestedValue	WADynamicVariable 		use: 'outer' 		during: [			WADynamicVariable 				use: 'inner'				during: [ self assert: WADynamicVariable value = 'inner' ].			self assert: WADynamicVariable value = 'outer' ]!

testWithoutValue	self assert: WADynamicVariable value isNil!

testWithValue	WADynamicVariable 		use: 'value' 		during: [ self assert: WADynamicVariable value = 'value' ]! !

!WADynamicVariableTest categoriesForMethods!
testAnswer!public!tests! !
testWithNestedValue!public!tests! !
testWithoutValue!public!tests! !
testWithValue!public!tests! !
!

