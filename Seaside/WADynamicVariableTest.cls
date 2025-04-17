"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WADynamicVariableTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADynamicVariableTest guid: (GUID fromString: '{f5b1e0f5-a086-4486-a330-68d6092c1a9e}')!

WADynamicVariableTest comment: ''!

!WADynamicVariableTest categoriesForClass!Utilities! !

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

