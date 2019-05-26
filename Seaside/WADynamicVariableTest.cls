"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WADynamicVariableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADynamicVariableTest guid: (GUID fromString: '{c84ef0bc-4aed-452c-8a14-883813aa218e}')!
WADynamicVariableTest comment: ''!
!WADynamicVariableTest categoriesForClass!Seaside-Tests-Core-Utilities! !
!WADynamicVariableTest methodsFor!

testAnswer	self assert: (WADynamicVariable use: 'value' during: [ true ])!

testWithNestedValue	WADynamicVariable 		use: 'outer' 		during: [			WADynamicVariable 				use: 'inner'				during: [ self assert: WADynamicVariable value = 'inner' ].			self assert: WADynamicVariable value = 'outer' ]!

testWithoutValue	self assert: WADynamicVariable value isNil!

testWithValue	WADynamicVariable 		use: 'value' 		during: [ self assert: WADynamicVariable value = 'value' ]! !
!WADynamicVariableTest categoriesFor: #testAnswer!public!tests! !
!WADynamicVariableTest categoriesFor: #testWithNestedValue!public!tests! !
!WADynamicVariableTest categoriesFor: #testWithoutValue!public!tests! !
!WADynamicVariableTest categoriesFor: #testWithValue!public!tests! !

