"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WADynamicVariableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADynamicVariableTest guid: (GUID fromString: '{47137e75-719f-48b3-a563-df1c333da594}')!
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

