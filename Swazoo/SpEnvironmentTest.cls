"Filed out from Dolphin Smalltalk 7"!

SpTestCase subclass: #SpEnvironmentTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SpEnvironmentTest guid: (GUID fromString: '{a9956fb0-2fe2-41bb-bdc1-8a93a9394326}')!
SpEnvironmentTest comment: ''!
!SpEnvironmentTest categoriesForClass!Unclassified! !
!SpEnvironmentTest methodsFor!

testAllSubclassesOfAClass

	self assert: (SpEnvironment allSubclassesOf: Magnitude) = Magnitude allSubclasses asArray!

testBase64DecodeAsString
	
	self assert: (SpEnvironment base64DecodeAsString: 'SEFQUFkgQU5EIFJFQUw=') = 'HAPPY AND REAL'!

testBase64EncodeString
	
	self assert: (SpEnvironment base64EncodeString: 'HAPPY AND REAL') = 'SEFQUFkgQU5EIFJFQUw='!

testCharacterFromInteger
	
	self assert: (SpEnvironment characterFromInteger: 101) = $e!

testCompilerEvaluation

	self assert: (SpEnvironment evaluate: 'nil class' in: nil) = UndefinedObject.
	self assert: (SpEnvironment evaluate: '[:x | x + 4 ] value: 3' in: nil) = 7!

testDolphinEnvironment

	self assert: SpEnvironment isDolphin.
	self deny: SpEnvironment isVisualWorks.
	self deny: SpEnvironment isGemStone!

testIntegerFromString
	
	self assert: (SpEnvironment integerFromString: '1' ) = 1.
	self assert: (SpEnvironment integerFromString: '8r2') = 2. 
	self assert: (SpEnvironment integerFromString: '10e10') = 100000000000.
	!

testStreamStartPosition
	
	self assert: SpEnvironment streamStartPosition isZero! !
!SpEnvironmentTest categoriesFor: #testAllSubclassesOfAClass!public! !
!SpEnvironmentTest categoriesFor: #testBase64DecodeAsString!public! !
!SpEnvironmentTest categoriesFor: #testBase64EncodeString!public! !
!SpEnvironmentTest categoriesFor: #testCharacterFromInteger!public! !
!SpEnvironmentTest categoriesFor: #testCompilerEvaluation!public! !
!SpEnvironmentTest categoriesFor: #testDolphinEnvironment!public! !
!SpEnvironmentTest categoriesFor: #testIntegerFromString!public! !
!SpEnvironmentTest categoriesFor: #testStreamStartPosition!public! !

